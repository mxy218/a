.class public Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsAllPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsAllPreferenceController$g9EWgqqWg7tZSBZHP7Llomy2bWs;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsAllPreferenceController$g9EWgqqWg7tZSBZHP7Llomy2bWs;-><init>(Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .registers 1

    .line 31
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleVisEffectsAllPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .registers 6

    .line 47
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x643

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x574

    .line 47
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 50
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_21

    .line 62
    :cond_12
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    :cond_21
    :goto_21
    return-void
.end method
