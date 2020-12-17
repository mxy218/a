.class public Lcom/meizu/settings/deviceinfo/FlymeInfo;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeInfo.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isGuestUser:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeInfo$1;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/FlymeInfo$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeInfo;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkIfNeedRemovePreference()V
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeInfo;->isGuestUser:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "user_protocol"

    .line 80
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "privacy_statement"

    .line 81
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private enableSetupPackage()V
    .registers 6

    .line 86
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.meizu.setup"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 92
    :cond_12
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.meizu.setup.activity.SetupLanguageActivity"

    invoke-direct {v1, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v3, :cond_22

    .line 96
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_22
    return-void
.end method

.method private startActivityFromSetup(Ljava/lang/String;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->enableSetupPackage()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.setup"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startLegalInfoFragment(II)V
    .registers 9

    .line 138
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_key_content_resid"

    .line 139
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-class p2, Lcom/meizu/settings/deviceinfo/FlymeLegalInfomationFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startPrivacyStatementActivity()V
    .registers 2

    const-string v0, "com.meizu.setup.activity.SettingPrivacyAgreementActivity"

    .line 113
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startActivityFromSetup(Ljava/lang/String;)V

    return-void
.end method

.method private startUserProtocolActivity()V
    .registers 2

    const-string v0, "com.meizu.setup.activity.SettingUserAgreementActivity"

    .line 109
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startActivityFromSetup(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 57
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16008d

    .line 58
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeInfo;->isGuestUser:Z

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "terms"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string/jumbo v0, "yunos_copyright"

    .line 67
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "regulation"

    .line 71
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :cond_40
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->checkIfNeedRemovePreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 118
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "legal_info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const p1, 0x7f12139b

    const p2, 0x7f120589

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startLegalInfoFragment(II)V

    return v1

    .line 122
    :cond_1d
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "yunos_copyright"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const p1, 0x7f121a25

    const p2, 0x7f121a24

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startLegalInfoFragment(II)V

    return v1

    .line 126
    :cond_3a
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_protocol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 127
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startUserProtocolActivity()V

    return v1

    .line 129
    :cond_51
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "privacy_statement"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeInfo;->startPrivacyStatementActivity()V

    return v1

    .line 134
    :cond_68
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
