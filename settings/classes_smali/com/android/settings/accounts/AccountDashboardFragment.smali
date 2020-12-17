.class public Lcom/android/settings/accounts/AccountDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDashboardFragment.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Lcom/android/settings/accounts/AccountDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/AccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)V

    .line 91
    new-instance p3, Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p3, v2}, Lcom/meizu/settings/account/FlymeAccountSettings;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    .line 92
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/account/FlymeAccountSettings;->setAccountPreferenceController(Lcom/android/settings/accounts/AccountPreferenceController;)V

    if-eqz p2, :cond_23

    .line 96
    invoke-virtual {p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 98
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p0, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 4
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

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1, p0, v0}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFlymeAccountSettings()Lcom/meizu/settings/account/FlymeAccountSettings;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    return-object p0
.end method

.method public getHelpResource()I
    .registers 1

    const p0, 0x7f1209bd

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "AccountDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f16000f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/meizu/settings/account/FlymeAccountSettings;->onCreateView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .line 145
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 147
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 155
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mFlymeAccountSettings:Lcom/meizu/settings/account/FlymeAccountSettings;

    invoke-virtual {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->onStart()V

    return-void
.end method
