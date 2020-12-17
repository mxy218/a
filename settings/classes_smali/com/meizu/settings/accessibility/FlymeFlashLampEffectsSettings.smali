.class public Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeFlashLampEffectsSettings.java"


# instance fields
.field private mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mFlashEffectsSwitchUri:Landroid/net/Uri;

.field private mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScenesAlarm:Landroid/preference/CheckBoxPreference;

.field private mScenesAlarmUri:Landroid/net/Uri;

.field private mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

.field private mScenesIncommingCallUri:Landroid/net/Uri;

.field private mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

.field private mScenesReceiveSmsUri:Landroid/net/Uri;

.field private mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

.field private mScenesRedEnvelopeUri:Landroid/net/Uri;

.field private mScenesSendSms:Landroid/preference/CheckBoxPreference;

.field private mScenesSendSmsUri:Landroid/net/Uri;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    const-string v0, "flashlamp_effects_switch"

    .line 63
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitchUri:Landroid/net/Uri;

    const-string v0, "flashlamp_effects_incomming_call"

    .line 65
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCallUri:Landroid/net/Uri;

    const-string v0, "flashlamp_effects_alarm"

    .line 67
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarmUri:Landroid/net/Uri;

    const-string v0, "flashlamp_effects_send_sms"

    .line 69
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSmsUri:Landroid/net/Uri;

    const-string v0, "flashlamp_effects_receive_sms"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSmsUri:Landroid/net/Uri;

    const-string v0, "flashlamp_effects_red_envelope"

    .line 73
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelopeUri:Landroid/net/Uri;

    .line 77
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings$1;-><init>(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/net/Uri;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitchUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)I
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setItemsEnable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/net/Uri;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCallUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;Ljava/lang/String;I)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    return-object p0
.end method

.method private getSystemSettingsValue(Ljava/lang/String;I)I
    .registers 5

    .line 331
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemSettingsValue key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " def = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeFlashLampEffectsSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private initPreference()V
    .registers 2

    const-string v0, "flash_effects_switch"

    .line 144
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo v0, "scenes_incomming_call"

    .line 145
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "scenes_alarm"

    .line 146
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "scenes_send_sms"

    .line 147
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "scenes_receive_sms"

    .line 148
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "scenes_red_envelope"

    .line 149
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private setItemsEnable(Z)V
    .registers 3

    const-string v0, "flash_effects_scenes"

    .line 327
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setSystemSettings(Ljava/lang/String;I)V
    .registers 5

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSystemSettings key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFlashLampEffectsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updatePreference()V
    .registers 12

    const-string v0, "flashlamp_effects_switch"

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const-string v4, "flashlamp_effects_incomming_call"

    .line 175
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_17

    move v5, v3

    goto :goto_18

    :cond_17
    move v5, v1

    :goto_18
    const-string v6, "flashlamp_effects_red_envelope_check"

    const-string v7, "flashlamp_effects_receive_sms_check"

    const-string v8, "flashlamp_effects_send_sms_check"

    const-string v9, "flashlamp_effects_alarm_check"

    const-string v10, "flashlamp_effects_incomming_call_check"

    if-nez v2, :cond_4f

    if-eqz v5, :cond_4f

    .line 180
    invoke-direct {p0, v0, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 182
    invoke-direct {p0, v4, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 183
    invoke-direct {p0, v10, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    const-string v4, "flashlamp_effects_alarm"

    .line 185
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 186
    invoke-direct {p0, v9, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    const-string v4, "flashlamp_effects_send_sms"

    .line 188
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 189
    invoke-direct {p0, v8, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    const-string v4, "flashlamp_effects_receive_sms"

    .line 191
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 192
    invoke-direct {p0, v7, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    const-string v4, "flashlamp_effects_red_envelope"

    .line 194
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 195
    invoke-direct {p0, v6, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 198
    :cond_4f
    invoke-direct {p0, v10, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_57

    move v4, v3

    goto :goto_58

    :cond_57
    move v4, v1

    :goto_58
    if-eqz v2, :cond_5f

    if-eq v5, v4, :cond_5f

    .line 202
    invoke-direct {p0, v10, v5}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 204
    :cond_5f
    invoke-direct {p0, v10, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_67

    move v2, v3

    goto :goto_68

    :cond_67
    move v2, v1

    .line 207
    :goto_68
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_75

    move v0, v3

    goto :goto_76

    :cond_75
    move v0, v1

    .line 211
    :goto_76
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setItemsEnable(Z)V

    .line 214
    invoke-direct {p0, v9, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_8c

    move v0, v3

    goto :goto_8d

    :cond_8c
    move v0, v1

    .line 216
    :goto_8d
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    invoke-direct {p0, v8, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9a

    move v0, v3

    goto :goto_9b

    :cond_9a
    move v0, v1

    .line 220
    :goto_9b
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    invoke-direct {p0, v7, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a8

    move v0, v3

    goto :goto_a9

    :cond_a8
    move v0, v1

    .line 224
    :goto_a9
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    invoke-direct {p0, v6, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_b5

    move v1, v3

    .line 228
    :cond_b5
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 135
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600a6

    .line 136
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 137
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->initPreference()V

    .line 138
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    .line 139
    new-instance p1, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    invoke-direct {p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    .line 140
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onDestroy()V
    .registers 9

    .line 343
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "flashlamp_effects_switch"

    .line 346
    invoke-direct {p0, v2, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    .line 349
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    .line 348
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v3, "FlymeFlashLampEffectsSettings"

    const-string v4, "flash_effect"

    invoke-virtual {v2, v4, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "flashlamp_effects_incomming_call_check"

    .line 354
    invoke-direct {p0, v2, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "flashlamp_effects_alarm_check"

    .line 355
    invoke-direct {p0, v4, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "flashlamp_effects_send_sms_check"

    .line 356
    invoke-direct {p0, v5, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "flashlamp_effects_receive_sms_check"

    .line 357
    invoke-direct {p0, v6, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "flashlamp_effects_red_envelope_check"

    .line 358
    invoke-direct {p0, v7, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v1

    .line 361
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "ringing"

    .line 360
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "alarm"

    .line 362
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "send_message"

    .line 364
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "receive_message"

    .line 366
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receive_redpacket"

    .line 368
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "flash_effect_scene"

    invoke-virtual {p0, v1, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 164
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string p0, "FlymeFlashLampEffectsSettings"

    const-string/jumbo v0, "onPause"

    .line 169
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 233
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "flashlamp_effects_red_envelope_check"

    const-string v4, "flashlamp_effects_receive_sms_check"

    const-string v5, "flashlamp_effects_send_sms_check"

    const-string v6, "flashlamp_effects_alarm_check"

    const-string v7, "flashlamp_effects_incomming_call_check"

    const-string v8, "flashlamp_effects_red_envelope"

    const-string v9, "flashlamp_effects_receive_sms"

    const-string v10, "flashlamp_effects_send_sms"

    const-string v11, "flashlamp_effects_alarm"

    const-string v12, "flashlamp_effects_incomming_call"

    if-eqz v2, :cond_89

    .line 235
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_2c

    move v2, v13

    goto :goto_2d

    :cond_2c
    move v2, v14

    :goto_2d
    const-string v15, "flashlamp_effects_switch"

    .line 234
    invoke-direct {v0, v15, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 236
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 237
    invoke-direct {v0, v7, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_43

    .line 238
    invoke-direct {v0, v12, v13}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 241
    :cond_43
    invoke-direct {v0, v6, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_4c

    .line 242
    invoke-direct {v0, v11, v13}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 245
    :cond_4c
    invoke-direct {v0, v5, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_55

    .line 246
    invoke-direct {v0, v10, v13}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 249
    :cond_55
    invoke-direct {v0, v4, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_5e

    .line 250
    invoke-direct {v0, v9, v13}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 253
    :cond_5e
    invoke-direct {v0, v3, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->getSystemSettingsValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_77

    .line 254
    invoke-direct {v0, v8, v13}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    goto :goto_77

    .line 258
    :cond_68
    invoke-direct {v0, v12, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 260
    invoke-direct {v0, v11, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 262
    invoke-direct {v0, v10, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 264
    invoke-direct {v0, v9, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 266
    invoke-direct {v0, v8, v14}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 268
    :cond_77
    :goto_77
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setItemsEnable(Z)V

    .line 269
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 270
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    goto/16 :goto_18f

    .line 272
    :cond_89
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 274
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 273
    invoke-direct {v0, v12, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 276
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 275
    invoke-direct {v0, v7, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 277
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_b5

    const/4 v3, 0x2

    .line 278
    invoke-virtual {v2, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->startFlashEffects(I)V

    goto/16 :goto_18f

    .line 279
    :cond_b5
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 280
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    goto/16 :goto_18f

    .line 282
    :cond_be
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 284
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 283
    invoke-direct {v0, v11, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 286
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 285
    invoke-direct {v0, v6, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 287
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_eb

    const/16 v3, 0x8

    .line 288
    invoke-virtual {v2, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->startFlashEffects(I)V

    goto/16 :goto_18f

    .line 289
    :cond_eb
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 290
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    goto/16 :goto_18f

    .line 292
    :cond_f4
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 294
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 293
    invoke-direct {v0, v10, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 296
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 295
    invoke-direct {v0, v5, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 297
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesSendSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_121

    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_121

    const/16 v3, 0x10

    .line 298
    invoke-virtual {v2, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->startFlashEffects(I)V

    goto/16 :goto_18f

    .line 299
    :cond_121
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 300
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    goto :goto_18f

    .line 302
    :cond_129
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 304
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 303
    invoke-direct {v0, v9, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 306
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 305
    invoke-direct {v0, v4, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 307
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesReceiveSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_155

    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_155

    const/16 v3, 0x20

    .line 308
    invoke-virtual {v2, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->startFlashEffects(I)V

    goto :goto_18f

    .line 309
    :cond_155
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 310
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    goto :goto_18f

    .line 312
    :cond_15d
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 314
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 313
    invoke-direct {v0, v8, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 316
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 315
    invoke-direct {v0, v3, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->setSystemSettings(Ljava/lang/String;I)V

    .line 317
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesRedEnvelope:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_188

    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_188

    const/4 v3, 0x4

    .line 318
    invoke-virtual {v2, v3}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->startFlashEffects(I)V

    goto :goto_18f

    .line 319
    :cond_188
    iget-object v2, v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlymeFlashLampEffectsAdapter:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    if-eqz v2, :cond_18f

    .line 320
    invoke-virtual {v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->stopFlashEffectsImmediately()V

    .line 323
    :cond_18f
    :goto_18f
    invoke-super/range {p0 .. p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .line 154
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->updatePreference()V

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mFlashEffectsSwitchUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mScenesIncommingCallUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "FlymeFlashLampEffectsSettings"

    const-string/jumbo v0, "onResume"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
