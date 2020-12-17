.class public Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DebugGpuOverdrawPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->mListValues:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .registers 6

    const-string v0, "debug.hwui.overdraw"

    const-string v1, ""

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_a
    iget-object v3, p0, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 79
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v1, v2

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 84
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 85
    iget-object v2, p0, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .registers 2

    if-nez p1, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 69
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    const-string p1, "debug.hwui.overdraw"

    .line 68
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "debug_hw_overdraw"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .registers 2

    .line 91
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->updateDebugHwOverdrawOptions()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 54
    invoke-direct {p0, p2}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->updateDebugHwOverdrawOptions()V

    const/4 v0, 0x1

    if-eqz p2, :cond_14

    const-string v1, "false"

    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_14

    :cond_12
    move p2, v0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p2, 0x0

    :goto_15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return v0
.end method

.method protected shouldResetDevelopmentOptions()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->updateDebugHwOverdrawOptions()V

    return-void
.end method
