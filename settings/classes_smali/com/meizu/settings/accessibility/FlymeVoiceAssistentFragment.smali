.class public Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeVoiceAssistentFragment.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mHeadsetMiddleKeyWakeupPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mSmartVoiceWakeupPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment$1;

    invoke-direct {v0}, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .registers 4

    const-string/jumbo v0, "smart_voice_wakeup"

    .line 52
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mSmartVoiceWakeupPreference:Landroid/preference/Preference;

    .line 53
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    .line 54
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.voiceassistant"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mSmartVoiceWakeupPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "headset_middlekey_wakeup"

    .line 59
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mHeadsetMiddleKeyWakeupPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mHeadsetMiddleKeyWakeupPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "headset_middle_key_wakeup"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_41

    move v1, v2

    :cond_41
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16010a

    .line 46
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->initPreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mHeadsetMiddleKeyWakeupPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 68
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mHeadsetMiddleKeyWakeupPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_17

    move p0, v1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    const-string p2, "headset_middle_key_wakeup"

    .line 68
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 71
    :cond_1e
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;->mSmartVoiceWakeupPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_46

    .line 73
    :try_start_22
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.voiceassistant.VOICE_WAKE_UP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14000000

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_31} :catch_32

    goto :goto_45

    :catch_32
    const-string p1, "FlymeVoiceAssistentFragment"

    const-string p2, "ActivityNotFoundException for MTK voice wakeup preference"

    .line 79
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f121455

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v4, "com.meizu.settings.accessibility.FlymeSmartVoiceWakeupFragment"

    move-object v2, p0

    move-object v3, p0

    .line 80
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_45
    return v1

    .line 85
    :cond_46
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
