.class public abstract Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;
    }
.end annotation


# instance fields
.field protected mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field protected mParent:Landroidx/fragment/app/Fragment;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mRules:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 52
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 53
    iput-object p3, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Lcom/android/settings/notification/ZenRuleInfo;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_68

    .line 88
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_8

    goto :goto_68

    .line 91
    :cond_8
    instance-of v1, p1, Landroid/content/pm/ServiceInfo;

    const-string v2, "android.service.zen.automatic.ruleType"

    if-eqz v1, :cond_15

    .line 92
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    .line 93
    :cond_15
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_1b
    invoke-static {v0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v2, :cond_68

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    if-eqz v3, :cond_68

    .line 97
    new-instance v4, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v4}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    if-eqz v1, :cond_3d

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    iput-object v0, v4, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string v0, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    .line 100
    iput-object v0, v4, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 101
    iput-object v2, v4, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 103
    iput-object v3, v4, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    .line 104
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    const/4 p0, -0x1

    const-string v0, "android.service.zen.automatic.ruleInstanceLimit"

    if-eqz v1, :cond_5f

    .line 106
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_65

    .line 107
    :cond_5f
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_65
    iput p0, v4, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-object v4

    :cond_68
    :goto_68
    return-object v0
.end method

.method protected static getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.service.notification.extra.RULE_ID"

    .line 78
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_17

    .line 80
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1a

    .line 82
    :cond_17
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1a
    return-object p2
.end method

.method protected static getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p0, :cond_d

    .line 115
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 116
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    if-nez p1, :cond_11

    return-object p0

    .line 122
    :cond_11
    instance-of v0, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1f

    .line 123
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 126
    :cond_1f
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    .line 127
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 130
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_31
    return-object p0
.end method


# virtual methods
.method protected getRules()[Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    if-nez v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    .line 66
    :cond_c
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 70
    iget-object v0, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    new-instance v1, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;-><init>(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/ZenRuleInfo;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    return-void
.end method
