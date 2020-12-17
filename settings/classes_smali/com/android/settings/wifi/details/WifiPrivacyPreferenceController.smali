.class public Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiPrivacyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field private static final KEY_WIFI_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final PREF_RANDOMIZATION_NONE:I = 0x1

.field private static final PREF_RANDOMIZATION_PERSISTENT:I


# instance fields
.field private mIsEphemeral:Z

.field private mIsPasspoint:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "privacy"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method public static translatePrefValueToMacRandomizedValue(I)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .registers 3

    .line 145
    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result p0

    .line 146
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100fb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    const/4 p0, 0x2

    :goto_12
    return p0
.end method

.method getRandomizationValue()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_7

    .line 113
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return p0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2b

    .line 96
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_2b

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 106
    :cond_2b
    check-cast p1, Landroidx/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .registers 4

    .line 151
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 152
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_15

    goto :goto_27

    .line 157
    :cond_15
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq v1, v0, :cond_27

    .line 158
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    nop

    :cond_27
    :goto_27
    return-void
.end method

.method public setIsEphemeral(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    return-void
.end method

.method public setIsPasspoint(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 5

    .line 81
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->getRandomizationValue()I

    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 87
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    if-nez v1, :cond_19

    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    if-eqz p0, :cond_23

    :cond_19
    const/4 p0, 0x0

    .line 88
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const p0, 0x7f121945

    .line 89
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_23
    return-void
.end method
