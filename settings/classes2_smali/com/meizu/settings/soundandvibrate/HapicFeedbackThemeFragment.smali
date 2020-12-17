.class public Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "HapicFeedbackThemeFragment.java"


# instance fields
.field private mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

.field mListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment$1;-><init>(Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;Ljava/util/ArrayList;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->initPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method private initPreference(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "HapicFeedbackFragment"

    const-string p1, "initPreference not attach activity,return"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_theme"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    .line 64
    :cond_20
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v1, 0x0

    move v2, v1

    .line 65
    :goto_27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 66
    new-instance v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    iget-object v4, v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    iget-object v4, v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    iget-object v4, v4, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    const/4 v4, 0x1

    .line 71
    invoke-virtual {v3, v4, v4, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_66
    return-void
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    .line 112
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_19

    .line 114
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v4, v4, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_1e

    .line 116
    :cond_19
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v1, v4, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 43
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16008c

    .line 44
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "feedback_type"

    .line 45
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    const-string p1, "haptic_feedback"

    .line 46
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 47
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    invoke-virtual {p1, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 49
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_43

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_28

    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const-string v2, "haptic_feedback_enabled"

    .line 79
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackTypeCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mHapicFeedbackSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_65

    .line 83
    :cond_28
    instance-of v0, p2, Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz v0, :cond_65

    .line 84
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_theme"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    :cond_53
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->updatePreference(Landroid/preference/Preference;)V

    .line 91
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->performHapticPreview(Ljava/lang/String;)V

    .line 94
    :cond_65
    :goto_65
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 3

    .line 99
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->mListener:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->resume(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;Z)V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 105
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;->pause()V

    return-void
.end method
