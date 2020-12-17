.class abstract Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "AbstractZenCustomRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field mId:Ljava/lang/String;

.field mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method createBundle()Landroid/os/Bundle;
    .registers 3

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    const-string v1, "RULE_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAvailable()Z
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .registers 3

    .line 52
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 41
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    :cond_c
    return-void
.end method
