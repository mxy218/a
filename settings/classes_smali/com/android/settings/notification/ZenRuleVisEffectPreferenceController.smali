.class public Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected mEffect:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsCategory:I

.field protected mParentSuppressedEffects:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .registers 7

    .line 45
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 46
    iput p4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    .line 47
    iput p5, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    .line 48
    iput-object p6, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 3

    .line 53
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_8
    iget v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111008d

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_1b
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x642

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x643

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 93
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 98
    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    xor-int/2addr p1, v4

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    .line 98
    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return v4
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 11

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_59

    .line 71
    :cond_e
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 73
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v3, :cond_38

    .line 74
    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_24
    if-ge v5, v4, :cond_39

    aget v7, v3, v5

    .line 75
    iget-object v8, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v8}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    if-nez v7, :cond_35

    move v6, v1

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_38
    move v6, v2

    :cond_39
    if-eqz v6, :cond_4e

    .line 81
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 82
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 83
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_59

    .line 85
    :cond_4e
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 86
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_59
    :goto_59
    return-void
.end method
