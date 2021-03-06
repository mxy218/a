.class public Lcom/meizu/settings/MzSimInfoManagement;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzSimInfoManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private PreferenceSlotOne:Landroid/preference/Preference;

.field private PreferenceSlotTwo:Landroid/preference/Preference;

.field private iPhoneEx:Landroid/telephony/ITelephonyExt;

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->mIsSlot1Insert:Z

    .line 51
    iput-boolean v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->mIsSlot2Insert:Z

    .line 59
    new-instance v0, Lcom/meizu/settings/MzSimInfoManagement$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/MzSimInfoManagement$1;-><init>(Lcom/meizu/settings/MzSimInfoManagement;)V

    iput-object v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/MzSimInfoManagement;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/MzSimInfoManagement;->initPreferenceUI()V

    return-void
.end method

.method private initPreferenceUI()V
    .registers 3

    const-string v0, "MzSimInfoManagement"

    const-string v1, "initPreferenceUI() and update UI"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/ApnSettingManagement;->updateSimCount(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/MzSimInfoManagement;->updateSimPreference()V

    return-void
.end method

.method private setSimPrefEnabled(Z)V
    .registers 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePrefEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzSimInfoManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotOne:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotTwo:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    if-eqz p1, :cond_3c

    move v2, v3

    :cond_3c
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateSimPreference()V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotOne:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/meizu/settings/ApnSettingManagement;->mCardOneName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotTwo:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1213e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/meizu/settings/ApnSettingManagement;->mCardTwoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_59

    move v1, v2

    :cond_59
    xor-int/lit8 v0, v1, 0x1

    .line 133
    invoke-direct {p0, v0}, Lcom/meizu/settings/MzSimInfoManagement;->setSimPrefEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160098

    .line 78
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "phone_ext"

    .line 79
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimInfoManagement;->iPhoneEx:Landroid/telephony/ITelephonyExt;

    const-string/jumbo p1, "pref_key_slot_one"

    .line 80
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotOne:Landroid/preference/Preference;

    const-string/jumbo p1, "pref_key_slot_two"

    .line 81
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotTwo:Landroid/preference/Preference;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 101
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 95
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/MzSimInfoManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11

    .line 111
    iget-object p1, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotOne:Landroid/preference/Preference;

    const-string/jumbo v0, "subscription"

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1d

    .line 112
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x0

    .line 113
    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v5, 0x7f12142c

    const/4 v6, 0x0

    const-string v4, "com.meizu.settings.MzSimCardStatus"

    move-object v2, p0

    move-object v3, p0

    .line 114
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v1

    .line 116
    :cond_1d
    iget-object p1, p0, Lcom/meizu/settings/MzSimInfoManagement;->PreferenceSlotTwo:Landroid/preference/Preference;

    if-ne p2, p1, :cond_34

    .line 117
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 118
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v5, 0x7f12142c

    const/4 v6, 0x0

    const-string v4, "com.meizu.settings.MzSimCardStatus"

    move-object v2, p0

    move-object v3, p0

    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_34
    return v1
.end method

.method public onResume()V
    .registers 4

    .line 86
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/MzSimInfoManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-direct {p0}, Lcom/meizu/settings/MzSimInfoManagement;->initPreferenceUI()V

    return-void
.end method
