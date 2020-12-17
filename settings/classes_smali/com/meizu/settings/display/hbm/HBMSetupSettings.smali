.class public Lcom/meizu/settings/display/hbm/HBMSetupSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "HBMSetupSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final KEY_ENABLE_HBM:Ljava/lang/String;

.field private mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mHBMWarningDialog:Landroid/content/DialogInterface;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "enable_hbm"

    .line 26
    iput-object v0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->KEY_ENABLE_HBM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)Landroid/content/DialogInterface;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMWarningDialog:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method private collectHBMState(Z)V
    .registers 4

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string/jumbo v1, "status"

    .line 105
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p1, "highlight_mode_switch"

    const-string v1, "HBMSetupActivity"

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showWarningDialog()V
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120955

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120956

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    .line 74
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;-><init>(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMWarningDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMWarningDialog:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_2b

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_26

    .line 92
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const/4 v1, 0x1

    const-string v2, "hbm_switch_state"

    invoke-static {p1, v2, v1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 94
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x3

    const-string v2, "hbm_remaining_reminders"

    invoke-static {p1, v2, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    invoke-direct {p0, v1}, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->collectHBMState(Z)V

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2b

    .line 98
    :cond_26
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 36
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160079

    .line 37
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "enable_hbm"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 40
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    .line 41
    iget-object p1, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 42
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hbm_switch_state"

    const/4 v3, -0x3

    .line 41
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    goto :goto_31

    :cond_30
    move v2, v0

    :goto_31
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "launchFromHBMNotify"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 48
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.HBM_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    :cond_54
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->mHBMSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_26

    .line 56
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->showWarningDialog()V

    goto :goto_26

    .line 59
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "hbm_switch_state"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 61
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x3

    const-string v3, "hbm_remaining_reminders"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 62
    invoke-direct {p0, v2}, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->collectHBMState(Z)V

    .line 66
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
