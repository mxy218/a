.class public Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiNetworkListFragment.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;
    }
.end annotation


# instance fields
.field private mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAddPreference:Landroidx/preference/Preference;

.field private mFakeNetworkPreference:Landroidx/preference/Preference;

.field private mIsTest:Z

.field mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPointPreference;
    .registers 9

    .line 343
    new-instance v6, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v4, 0x7f080322

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-object v6
.end method

.method private getScannedAccessPointIfAvailable(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 5

    .line 332
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    .line 333
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 334
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 335
    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_21
    return-object p1
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo v0, "wifi_config_key"

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_12

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_12
    return-void
.end method

.method private isValidForDppConfiguration(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .registers 2

    .line 255
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_c

    const/4 p1, 0x5

    if-eq p0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onAccessPointChanged$0(Lcom/android/settingslib/wifi/AccessPoint;)V
    .registers 1

    .line 194
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 196
    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_b
    return-void
.end method

.method private launchAddNetworkFragment()V
    .registers 3

    .line 266
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121833

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method private removeAccessPointPreferences()V
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 276
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateAccessPointPreferences()V
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 286
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$tHnl1H-Ezbhr-goOfuT9H8v_fns;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$tHnl1H-Ezbhr-goOfuT9H8v_fns;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 289
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$im98oMVseKI8S1PfQ-90XTsRVeE;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$im98oMVseKI8S1PfQ-90XTsRVeE;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 290
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$MDDOx8wAL2tgC__F--hp1GKaOuM;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$MDDOx8wAL2tgC__F--hp1GKaOuM;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 303
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 309
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->createAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 311
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 312
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 313
    invoke-virtual {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 315
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v4

    goto :goto_46

    .line 318
    :cond_6f
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mIsTest:Z

    if-eqz v0, :cond_86

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_86
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x63b

    return p0
.end method

.method public synthetic lambda$updateAccessPointPreferences$1$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .registers 2

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->isValidForDppConfiguration(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateAccessPointPreferences$2$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 2

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getScannedAccessPointIfAvailable(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateAccessPointPreferences$3$WifiNetworkListFragment(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I
    .registers 4

    .line 293
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 295
    :cond_e
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    return p0

    .line 299
    :cond_1c
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .registers 4

    const-string v0, "WifiNetworkListFragment"

    const-string/jumbo v1, "onAccessPointChanged (singular) callback initiated"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 193
    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$0MXyYoxpcuvpYu82f1MtTJJVwJA;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onAccessPointsChanged()V
    .registers 1

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->updateAccessPointPreferences()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    invoke-static {p1, p0, v0, v1, v1}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x0

    const-string/jumbo v1, "test"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mIsTest:Z

    .line 108
    :cond_2a
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    if-ne p2, p1, :cond_c

    .line 132
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    .line 134
    :cond_c
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    :cond_11
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    instance-of v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz v0, :cond_c

    .line 86
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    return-void

    .line 84
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid context type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConnectedChanged()V
    .registers 1

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f16011c

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "access_points"

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 145
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    .line 146
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const p2, 0x7f080322

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake_key"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake network"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    const p2, 0x7f080148

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    const p2, 0x7f121833

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 154
    new-instance p1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public onDetach()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .registers 2

    .line 204
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 11

    .line 209
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 210
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 211
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_f
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 222
    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x0

    .line 221
    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    .line 225
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_5a

    .line 226
    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    goto :goto_5a

    .line 219
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid access point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_37
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3f

    .line 229
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->launchAddNetworkFragment()V

    goto :goto_5a

    .line 230
    :cond_3f
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_5b

    .line 231
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_5a

    .line 232
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v3, "WPA"

    const-string v4, "fake network"

    const-string/jumbo v5, "password"

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    :cond_5a
    :goto_5a
    return v1

    .line 242
    :cond_5b
    invoke-super {p0, p1}, Landroidx/preference/MzPreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onWifiStateChanged(I)V
    .registers 3

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    goto :goto_16

    .line 163
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->updateAccessPointPreferences()V

    goto :goto_16

    .line 168
    :cond_13
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->removeAccessPointPreferences()V

    :goto_16
    return-void
.end method
