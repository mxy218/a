.class public Lcom/meizu/settings/easymode/FlymeEasyModeSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeEasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCancelConfirmDialog:Landroid/app/AlertDialog;

.field mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$1;-><init>(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 121
    new-instance v0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;-><init>(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)Landroid/app/AlertDialog;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mCancelConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private changeEasyMode()V
    .registers 3

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.easylauncher.ACTION_EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private listenPhoneState()V
    .registers 4

    const-string v0, "phone"

    .line 75
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 76
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_14

    .line 78
    iget-object v1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 80
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private warnCancelEasyMode()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mCancelConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2e

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1207af

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    .line 102
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mCancelConfirmDialog:Landroid/app/AlertDialog;

    .line 107
    :cond_2e
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mCancelConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f160062

    .line 37
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "easy_mode"

    .line 38
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 40
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mCancelConfirmDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    if-ne p2, p1, :cond_b

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->changeEasyMode()V

    goto :goto_11

    .line 116
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onPause()V
    .registers 4

    const-string v0, "phone"

    .line 54
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    iget-object v1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 56
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_15

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 64
    invoke-direct {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->warnCancelEasyMode()V

    goto :goto_15

    .line 67
    :cond_12
    invoke-direct {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->changeEasyMode()V

    .line 71
    :cond_15
    :goto_15
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->listenPhoneState()V

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->mEasyModePreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_15

    .line 48
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_15
    return-void
.end method
