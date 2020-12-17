.class public Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "FlymeDeviceAdminAndCredential.java"


# instance fields
.field private mCredentialInstall:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mCredentialStorageType:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mResetCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mUserCredentials:Lcom/meizu/settings/widget/RestrictedPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private handleTrustCredentialPreference(Landroid/preference/PreferenceGroup;)V
    .registers 5

    const-string v0, "user"

    .line 69
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 71
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/appclone/AppCloneInit;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object v1

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/settings/appclone/AppCloneInit;->removeAppCloneUserInfo(Ljava/util/List;)Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    const-string v0, "trusted_credentials"

    .line 74
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 54
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "credential_storage_type"

    .line 56
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialStorageType:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v1, "user_credentials"

    .line 57
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mUserCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v1, "credentials_install"

    .line 58
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialInstall:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v1, "reset_credentials"

    .line 59
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mResetCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v1, "credentials_management"

    .line 61
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->filterDivider(Z)V

    .line 64
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->handleTrustCredentialPreference(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method private initResetCredentialsPreference()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mResetCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

    if-eqz v0, :cond_f

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    :cond_f
    return-void
.end method

.method private updatePreference()V
    .registers 4

    .line 85
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 86
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "no_config_credentials"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f12059e

    goto :goto_29

    :cond_26
    const v0, 0x7f12059f

    .line 91
    :goto_29
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialStorageType:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialStorageType:Lcom/meizu/settings/widget/RestrictedPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 95
    :cond_34
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->initResetCredentialsPreference()V

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 97
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_59

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialStorageType:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mUserCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

    .line 102
    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mCredentialInstall:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->mResetCredentials:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_59
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160052

    .line 43
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->initPreference()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 49
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;->updatePreference()V

    return-void
.end method
