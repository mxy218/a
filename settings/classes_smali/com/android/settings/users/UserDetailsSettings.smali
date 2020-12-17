.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mGuestUser:Z

.field private mPhonePref:Landroidx/preference/SwitchPreference;

.field private mRemoveUserPref:Landroidx/preference/Preference;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method enableCallsAndSms(Z)V
    .registers 8

    .line 138
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    const-string v1, "no_sms"

    const-string v2, "no_outgoing_calls"

    const/4 v3, 0x1

    if-eqz v0, :cond_64

    .line 140
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    xor-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 150
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 151
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 154
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 153
    invoke-virtual {v3, v2, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_4c

    .line 159
    :cond_64
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 160
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v2, v5, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/2addr p1, v3

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_79
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_11

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/16 p0, 0x251

    return p0

    :cond_e
    const/16 p0, 0x250

    return p0

    :cond_11
    const/16 p0, 0x24f

    return p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x62

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "user"

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const v0, 0x7f160105

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "enable_calling"

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    const-string/jumbo v0, "remove_user"

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "guest_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    .line 88
    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    const-string v2, "no_outgoing_calls"

    if-nez v1, :cond_74

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_6c

    .line 94
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 95
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_94

    .line 92
    :cond_6c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Arguments to this fragment must contain the user id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_74
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 102
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    const v3, 0x7f121726

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 104
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 105
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 104
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    :goto_94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_remove_user"

    .line 107
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 111
    :cond_a3
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_44

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 193
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 172
    :cond_44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 128
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    .line 129
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x2

    goto :goto_10

    :cond_f
    const/4 p1, 0x3

    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p2

    .line 133
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_19

    .line 117
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p1

    .line 118
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only admins can remove a user"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method removeUser()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method
