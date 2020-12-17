.class public Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeRedEnvelopeAssistantSettings.java"


# static fields
.field private static final ARRVING_RING_SWITCH_URI:Landroid/net/Uri;

.field private static final ASSISTANT_SWITCH_URI:Landroid/net/Uri;

.field private static final UNLOCK_AND_OPEN_SWITCH_URI:Landroid/net/Uri;


# instance fields
.field private mArrvingSound:Landroid/preference/Preference;

.field private mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSummary:Landroid/preference/Preference;

.field private mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mz_red_envelope_assistant_switch"

    .line 43
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ASSISTANT_SWITCH_URI:Landroid/net/Uri;

    const-string v0, "mz_red_envelope_arrving_ring_switch"

    .line 45
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ARRVING_RING_SWITCH_URI:Landroid/net/Uri;

    const-string v0, "mz_red_envelope_open_when_unlock"

    .line 47
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->UNLOCK_AND_OPEN_SWITCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .line 28
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ASSISTANT_SWITCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateAssistantSwitch()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .line 28
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ARRVING_RING_SWITCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateArrvingSound()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 28
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->UNLOCK_AND_OPEN_SWITCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateUnlockAndOpen()V

    return-void
.end method

.method private ensureServiceOn()V
    .registers 5

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.flyme.systemuitools"

    const-string v3, "com.meizu.luckymoney.LuckyMoneyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateArrvingSound()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "mz_red_envelope_arrving_ring_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 122
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v3, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getNameByValue(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getNameByValue(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_20
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mArrvingSound:Landroid/preference/Preference;

    if-eqz p0, :cond_27

    .line 130
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method

.method private updateAssistantSwitch()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "mz_red_envelope_assistant_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 114
    :goto_d
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_14

    .line 115
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_14
    return-void
.end method

.method private updateUnlockAndOpen()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_red_envelope_open_when_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    .line 137
    :cond_d
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_14

    .line 138
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 72
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    const p1, 0x7f1600ad

    .line 74
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "red_envelope_assistant_switch"

    .line 76
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string p1, "red_envelope_arrving_ring_switch"

    .line 78
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mArrvingSound:Landroid/preference/Preference;

    const-string p1, "red_envelope_summary"

    .line 80
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mSummary:Landroid/preference/Preference;

    .line 81
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mSummary:Landroid/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string p1, "unlock_and_open_switch"

    .line 82
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 83
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 84
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_4c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 150
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    .line 154
    :goto_15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "redpackets_switch_values"

    .line 153
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 156
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    move v2, v3

    .line 158
    :cond_31
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quick_redpackets_switch_values"

    .line 157
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3a
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_red_envelope_arrving_ring_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 162
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "redpackets_notification_ringtone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "redpackets_setting"

    const-string v2, "FlymeRedEnvelopeAssistantSettings"

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mAssistantEnableSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 171
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    const-string v2, "mz_red_envelope_assistant_switch"

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_3a

    .line 174
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ensureServiceOn()V

    goto :goto_3a

    .line 176
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mUnlockAndOpenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 178
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    const-string v0, "mz_red_envelope_open_when_unlock"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 100
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ASSISTANT_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->ARRVING_RING_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateAssistantSwitch()V

    .line 104
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateArrvingSound()V

    .line 105
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->UNLOCK_AND_OPEN_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->updateUnlockAndOpen()V

    :cond_32
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 94
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 95
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->updateRemoteRes()V

    return-void
.end method
