.class public Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "FlymeDocumentPasscodeSettings.java"


# instance fields
.field private isLocked:Z

.field private mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

.field private mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

.field private mResetPasscode:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 46
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->initPreference()V

    return-void
.end method

.method private initAssociateFlymeAccountPreference()V
    .registers 4

    .line 66
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.account"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    if-nez v0, :cond_11

    goto :goto_41

    :cond_11
    const-string v0, "associate_flyme_account"

    .line 70
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    .line 71
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setOrder(I)V

    .line 74
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAssociateFlymeAccountOpened(I)Z

    move-result p0

    .line 74
    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4a

    .line 68
    :cond_41
    :goto_41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_4a
    return-void
.end method

.method private initPreference()V
    .registers 3

    const v0, 0x7f16005c

    .line 52
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "passcode_lock"

    .line 55
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

    .line 56
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "doc_reset_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    .line 57
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    if-nez v0, :cond_2d

    .line 58
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const-string v0, "associate_flyme_account"

    .line 61
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    return-void
.end method

.method private initResetPasswordPreference()V
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    const-string v1, "doc_reset_password"

    if-eqz v0, :cond_23

    .line 133
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_32

    .line 134
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_32

    .line 138
    :cond_23
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 139
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_32
    :goto_32
    return-void
.end method

.method private startConfirmPassword(I)V
    .registers 8

    .line 103
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "password_from"

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startCreatePassword(Z)V
    .registers 9

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 113
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordType(I)I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 116
    :goto_11
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "password_from"

    .line 117
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_key_password_type"

    .line 119
    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-class p1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120863

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updatePreference()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->initResetPasswordPreference()V

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->initAssociateFlymeAccountPreference()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v0, -0x1

    if-nez p1, :cond_c

    if-ne p2, v0, :cond_2e

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setDocumentLockEnable(Z)V

    goto :goto_2e

    :cond_c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    if-ne p2, v0, :cond_15

    .line 161
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->startCreatePassword(Z)V

    goto :goto_2e

    :cond_15
    const/16 v2, 0x64

    if-ne p1, v2, :cond_2e

    if-ne p2, v0, :cond_27

    .line 164
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAssociateFlymeAccountOpened(IZ)V

    goto :goto_2e

    .line 167
    :cond_27
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/meizu/settings/utils/FlymeAccountHelper;->handleValidatePasswordError(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->init()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_24

    .line 83
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->isLocked:Z

    if-nez p1, :cond_14

    .line 84
    invoke-direct {p0, p2}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->startCreatePassword(Z)V

    goto :goto_17

    .line 86
    :cond_14
    invoke-direct {p0, p2}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->startConfirmPassword(I)V

    .line 88
    :goto_17
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mPasscodeLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_20

    move p2, v1

    :cond_20
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return v1

    .line 90
    :cond_24
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mResetPasscode:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2c

    .line 91
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->startConfirmPassword(I)V

    return v1

    .line 93
    :cond_2c
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_42

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->mAssociateFlymeAccount:Lcom/meizu/common/preference/SwitchPreference;

    .line 95
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    .line 94
    invoke-virtual {p1, p0, v1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->handleAssociateAccountClick(Landroid/app/Fragment;IZ)V

    return v1

    .line 99
    :cond_42
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 126
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;->updatePreference()V

    return-void
.end method
