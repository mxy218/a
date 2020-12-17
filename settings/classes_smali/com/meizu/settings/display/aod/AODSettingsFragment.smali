.class public Lcom/meizu/settings/display/aod/AODSettingsFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "AODSettingsFragment.java"


# instance fields
.field private mAODNotification:Lcom/meizu/common/preference/SwitchPreference;

.field private mAODSample:Lcom/meizu/settings/display/aod/AODPreference;

.field private mAODStyle:Landroid/preference/Preference;

.field private mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 42
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160014

    .line 44
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "persist.sys.meizu.aod"

    const-string v0, "0"

    .line 46
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "aod_switch"

    .line 47
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "aod_style"

    .line 50
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODStyle:Landroid/preference/Preference;

    const-string p1, "aod_image"

    .line 52
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/aod/AODPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSample:Lcom/meizu/settings/display/aod/AODPreference;

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSample:Lcom/meizu/settings/display/aod/AODPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->filterDivider(Z)V

    .line 54
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSample:Lcom/meizu/settings/display/aod/AODPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "notification_settings"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    const-string p1, "aod_notification_switch"

    .line 57
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODNotification:Lcom/meizu/common/preference/SwitchPreference;

    .line 58
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODNotification:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_50

    .line 73
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_display_inversion_enabled"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_14

    move p1, v2

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    const-string p2, "0"

    const-string/jumbo v0, "persist.sys.meizu.aod"

    if-eqz p1, :cond_42

    .line 76
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120fa5

    .line 77
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1209ef

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 83
    :cond_42
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_4c

    const-string p2, "1"

    :cond_4c
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return v2

    .line 86
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODStyle:Landroid/preference/Preference;

    if-ne v0, p2, :cond_68

    .line 88
    :try_start_54
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_67
    return v2

    .line 94
    :cond_68
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODNotification:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v0, p2, :cond_7f

    .line 95
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODNotification:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_79

    move v1, v2

    :cond_79
    const-string p0, "notification_settings"

    .line 95
    invoke-static {p1, p0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    .line 100
    :cond_7f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 64
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODSettingsFragment;->mAODSample:Lcom/meizu/settings/display/aod/AODPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/display/aod/AODPreference;->updateImage()V

    return-void
.end method
