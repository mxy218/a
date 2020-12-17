.class public Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "AdaptiveKeepBrightScreenFragment.java"


# instance fields
.field private mAdaptiveKeepBrightScreen:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateAdaptiveKeepBrightScreenSwitchPreference()V
    .registers 4

    const-string v0, "adaptive_keep_bright_screen_switch"

    .line 31
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;->mAdaptiveKeepBrightScreen:Lcom/meizu/common/preference/SwitchPreference;

    .line 32
    iget-object v0, p0, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;->mAdaptiveKeepBrightScreen:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "adaptive_keep_bright_screen"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160010

    .line 25
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 27
    invoke-direct {p0}, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;->updateAdaptiveKeepBrightScreenSwitchPreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 38
    iget-object v0, p0, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;->mAdaptiveKeepBrightScreen:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_18

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;->mAdaptiveKeepBrightScreen:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const-string v2, "adaptive_keep_bright_screen"

    .line 39
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
