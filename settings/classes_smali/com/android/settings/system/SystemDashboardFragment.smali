.class public Lcom/android/settings/system/SystemDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SystemDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/android/settings/system/SystemDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/SystemDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getVisiblePreferenceCount(Landroidx/preference/PreferenceGroup;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :goto_2
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 93
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_18

    .line 94
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroidx/preference/PreferenceGroup;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_20

    .line 95
    :cond_18
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    return v1
.end method


# virtual methods
.method public getHelpResource()I
    .registers 1

    const p0, 0x7f1209b6

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "SystemDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x2e8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f1600f5

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroidx/preference/PreferenceGroup;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_19

    const v0, 0x7fffffff

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 57
    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->showRestrictionDialog()V

    return-void
.end method

.method public showRestrictionDialog()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    const-string/jumbo v2, "show_aware_dialog_disabled"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object v0

    .line 65
    invoke-interface {v0, p0}, Lcom/android/settings/aware/AwareFeatureProvider;->showRestrictionDialog(Landroidx/fragment/app/Fragment;)V

    :cond_1f
    return-void
.end method
