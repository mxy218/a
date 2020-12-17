.class public Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;
.super Lcom/meizu/settings/MzSettingsPreferenceFragment;
.source "FlymeQuickWakeupFragment.java"


# instance fields
.field private mQuickWakeupDRAWCPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickWakeupDoubleClickSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickWakeupSlideDownSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickWakeupSlideLeftRightSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickWakeupSlideUpSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleDrawC(Z)V
    .registers 4

    const-string v0, "mz_quick_wakeup_draw_c"

    if-eqz p1, :cond_20

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mz_quick_wakeup_draw_c_package_detail"

    const-string v0, "com.meizu.flashlight,com.meizu.flashlight|com.meizu.flashlight,com.meizu.flashlight"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2c

    .line 206
    :cond_20
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2c
    return-void
.end method

.method private setItemsEnable(Z)V
    .registers 3

    const-string/jumbo v0, "quick_wakeup_category"

    .line 91
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 57
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16008e

    .line 58
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "quick_wakeup_switch"

    .line 60
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo p1, "quick_wakeup_double_click"

    .line 61
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDoubleClickSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo p1, "quick_wakeup_slide_up"

    .line 62
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideUpSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo p1, "quick_wakeup_slide_down"

    .line 63
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideDownSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo p1, "quick_wakeup_slide_left_right"

    .line 64
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideLeftRightSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo p1, "quick_wakeup_draw_c"

    .line 65
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDRAWCPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    const-string v2, "mz_quick_wakeup_switch"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_61

    move v2, v3

    goto :goto_62

    :cond_61
    move v2, v1

    :goto_62
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->setItemsEnable(Z)V

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDoubleClickSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v2, "mz_quick_wakeup_double_click"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7a

    move v2, v3

    goto :goto_7b

    :cond_7a
    move v2, v1

    :goto_7b
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideUpSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v2, "mz_quick_wakeup_slide_up"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8a

    move v2, v3

    goto :goto_8b

    :cond_8a
    move v2, v1

    :goto_8b
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideDownSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v2, "mz_quick_wakeup_slide_down"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9a

    move v2, v3

    goto :goto_9b

    :cond_9a
    move v2, v1

    :goto_9b
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideLeftRightSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v2, "mz_quick_wakeup_slide_left_right"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_aa

    move v2, v3

    goto :goto_ab

    :cond_aa
    move v2, v1

    :goto_ab
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDRAWCPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mz_quick_wakeup_draw_c"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_b9

    move v1, v3

    :cond_b9
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDoubleClickSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1d

    .line 165
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    const-string v0, "mz_quick_wakeup_double_click"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a6

    .line 169
    :cond_1d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideUpSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_3d

    .line 170
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideUpSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    const-string v2, "mz_quick_wakeup_slide_up"

    .line 171
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a6

    .line 174
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideDownSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_5c

    .line 175
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideDownSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    const-string v2, "mz_quick_wakeup_slide_down"

    .line 176
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a6

    .line 179
    :cond_5c
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSlideLeftRightSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_76

    .line 180
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v0, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    const-string v0, "mz_quick_wakeup_slide_left_right"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a6

    .line 184
    :cond_76
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_9b

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8b

    goto :goto_8c

    :cond_8b
    move v1, v2

    :goto_8c
    const-string v2, "mz_quick_wakeup_switch"

    .line 185
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->setItemsEnable(Z)V

    goto :goto_a6

    .line 189
    :cond_9b
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->mQuickWakeupDRAWCPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_a6

    .line 190
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;->handleDrawC(Z)V

    .line 195
    :cond_a6
    :goto_a6
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 267
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
