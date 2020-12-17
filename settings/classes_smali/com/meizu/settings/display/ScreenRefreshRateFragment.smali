.class public Lcom/meizu/settings/display/ScreenRefreshRateFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ScreenRefreshRateFragment.java"


# instance fields
.field private mDynamicRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

.field private mSixtyRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

.field private mTipsPreference:Lcom/meizu/settings/widget/TipsPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/ScreenRefreshRateFragment;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->startNintyRefreshRateTipsActivity()V

    return-void
.end method

.method private startNintyRefreshRateTipsActivity()V
    .registers 5

    .line 88
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.appcenter.event"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "url"

    const-string v3, "http://api-app.meizu.com/apps/public/special/detail/3048"

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "source_apkname"

    .line 91
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "source_info"

    const-string v3, "ninty_hz_game_source"

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_35
    return-void
.end method

.method private updatePreference(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 62
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mSixtyRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p1, v0, v0, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mDynamicRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p0, v1, v1, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_1e

    :cond_f
    if-eq p1, v0, :cond_14

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1e

    .line 65
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mSixtyRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p1, v1, v1, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mDynamicRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p0, v0, v0, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 35
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600dd

    .line 37
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "screen_refresh_rate_ninty"

    .line 39
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/ChecktextPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mDynamicRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    const-string/jumbo p1, "screen_refresh_rate_sixty"

    .line 40
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/ChecktextPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mSixtyRefreshRate:Lcom/meizu/settings/widget/ChecktextPreference;

    const-string/jumbo p1, "screen_refresh_rate_tips"

    .line 41
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TipsPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mTipsPreference:Lcom/meizu/settings/widget/TipsPreference;

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mTipsPreference:Lcom/meizu/settings/widget/TipsPreference;

    new-instance v0, Lcom/meizu/settings/display/ScreenRefreshRateFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/ScreenRefreshRateFragment$1;-><init>(Lcom/meizu/settings/display/ScreenRefreshRateFragment;)V

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/TipsPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 51
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->mTipsPreference:Lcom/meizu/settings/widget/TipsPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    :cond_43
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "screen_refresh_rate"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->updatePreference(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 72
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 73
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screen_refresh_rate_ninty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "screen_refresh_rate"

    if-eqz v0, :cond_22

    .line 74
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-direct {p0, v2}, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->updatePreference(I)V

    goto :goto_3a

    .line 77
    :cond_22
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "screen_refresh_rate_sixty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 78
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-direct {p0, v2}, Lcom/meizu/settings/display/ScreenRefreshRateFragment;->updatePreference(I)V

    .line 83
    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
