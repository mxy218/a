.class public abstract Lcom/meizu/settings/security/FlymeBasePasswordFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeBasePasswordFragment.java"


# instance fields
.field private mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

.field private mPasswordFrom:I

.field private mSupportAssociateAccount:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initAssociateFlymeAccountPreference()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.account"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 68
    :cond_10
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->isPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mSupportAssociateAccount:Z

    if-nez v0, :cond_1b

    goto :goto_44

    :cond_1b
    const-string v0, "associate_flyme_account"

    .line 71
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mSupportAssociateAccount:Z

    if-eqz v0, :cond_30

    .line 72
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v1

    iget p0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mPasswordFrom:I

    .line 75
    invoke-virtual {v1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAssociateFlymeAccountOpened(I)Z

    move-result p0

    .line 74
    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4d

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_4d
    return-void
.end method

.method private initData()V
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->getPasswordFrom()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mPasswordFrom:I

    .line 40
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->supportAssociateAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mSupportAssociateAccount:Z

    return-void
.end method

.method private initPrefrences()V
    .registers 3

    .line 35
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "associate_flyme_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    return-void
.end method

.method private updatePreferences()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->initAssociateFlymeAccountPreference()V

    return-void
.end method


# virtual methods
.method public abstract addPreferencesFromResource()V
.end method

.method public abstract getPasswordFrom()I
.end method

.method public abstract isPasswordEnabled()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->addPreferencesFromResource()V

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->initData()V

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->initPrefrences()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_1c

    .line 53
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mPasswordFrom:I

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    .line 54
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 53
    invoke-virtual {p1, p0, v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->handleAssociateAccountClick(Landroid/app/Fragment;IZ)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceTreeClickUsageStats(Landroid/preference/Preference;)V

    const/4 p0, 0x1

    return p0

    .line 59
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 45
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeBasePasswordFragment;->updatePreferences()V

    return-void
.end method

.method public abstract supportAssociateAccount()Z
.end method
