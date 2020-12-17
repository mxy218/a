.class public Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeRaiseAndFlipFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment$FlymeLabRaiseFlipFeatureReceiver;
    }
.end annotation


# instance fields
.field private mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initRaiseFlip()V
    .registers 7

    const-string/jumbo v0, "raise_flip"

    .line 39
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    .line 40
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "flipwakeup_switch"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 42
    :goto_1d
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "raisewakeup_switch"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_2b

    move v2, v3

    .line 44
    :cond_2b
    iget-object p0, p0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16006e

    .line 33
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->initRaiseFlip()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_2f

    .line 50
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    const/4 v4, -0x2

    const-string/jumbo v5, "raisewakeup_switch"

    .line 50
    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 52
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    const-string v1, "flipwakeup_switch"

    .line 52
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 56
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
