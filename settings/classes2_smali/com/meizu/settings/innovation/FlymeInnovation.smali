.class public Lcom/meizu/settings/innovation/FlymeInnovation;
.super Ljava/lang/Object;
.source "FlymeInnovation.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlampEffectsPreference:Landroid/preference/Preference;

.field private mGameModePreference:Landroid/preference/Preference;

.field private mRedEnvelopeAssistantPref:Landroid/preference/Preference;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 36
    iget-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 37
    iget-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/innovation/FlymeInnovation;->initPreference()V

    return-void
.end method

.method public static addNonIndexableKeys(Landroid/content/Context;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "flashlamp_effects"

    .line 121
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIfNeedRemovePreference()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mFlashlampEffectsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "red_envelope_assistant"

    .line 43
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "game_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mGameModePreference:Landroid/preference/Preference;

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "flashlamp_effects"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mFlashlampEffectsPreference:Landroid/preference/Preference;

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/innovation/FlymeInnovation;->checkIfNeedRemovePreference()V

    return-void
.end method

.method private updateFlashLampEffectsPreference()V
    .registers 1

    return-void
.end method

.method private updateGameMode()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mGameModePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_27

    .line 74
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 75
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "mz_game_mode"

    .line 74
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 77
    :goto_19
    iget-object p0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mGameModePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_21

    const v0, 0x7f120056

    goto :goto_24

    :cond_21
    const v0, 0x7f120055

    :goto_24
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_27
    return-void
.end method

.method private updateRedEnvelopePreference()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    if-eqz v0, :cond_27

    .line 86
    iget-object v0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mSettingsPreferenceFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 87
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "mz_red_envelope_assistant_switch"

    .line 86
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 89
    :goto_19
    iget-object p0, p0, Lcom/meizu/settings/innovation/FlymeInnovation;->mRedEnvelopeAssistantPref:Landroid/preference/Preference;

    if-eqz v1, :cond_21

    const v0, 0x7f120056

    goto :goto_24

    :cond_21
    const v0, 0x7f120055

    :goto_24
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_27
    return-void
.end method


# virtual methods
.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/innovation/FlymeInnovation;->updateRedEnvelopePreference()V

    .line 67
    invoke-direct {p0}, Lcom/meizu/settings/innovation/FlymeInnovation;->updateGameMode()V

    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/innovation/FlymeInnovation;->updateFlashLampEffectsPreference()V

    return-void
.end method
