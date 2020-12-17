.class public Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeAndroidVersionFragment.java"


# instance fields
.field private mAndroidVersion:Landroid/preference/Preference;

.field private mBaseBandOne:Landroid/preference/Preference;

.field private mBaseBandTwo:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mSecurityPatch:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBasebandSummary()V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120d3d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const v2, 0x7f1206d0

    if-eqz v1, :cond_37

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f120d3c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mBaseBandTwo:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getBaseBandString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 88
    :cond_37
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f12024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "base_band_two"

    .line 91
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 93
    :goto_4f
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mBaseBandOne:Landroid/preference/Preference;

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->getBaseBandString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "android_version"

    .line 47
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mAndroidVersion:Landroid/preference/Preference;

    const-string/jumbo v0, "security_patch"

    .line 48
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mSecurityPatch:Landroid/preference/Preference;

    const-string v0, "base_band_one"

    .line 49
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mBaseBandOne:Landroid/preference/Preference;

    const-string v0, "base_band_two"

    .line 50
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mBaseBandTwo:Landroid/preference/Preference;

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mAndroidVersion:Landroid/preference/Preference;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->initSecurityPatch()V

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->initBasebandSummary()V

    return-void
.end method

.method private initSecurityPatch()V
    .registers 5

    .line 63
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 66
    :try_start_8
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "dMMMMyyyy"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_26} :catch_26

    .line 74
    :catch_26
    :cond_26
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mSecurityPatch:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160013

    .line 40
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;->initPreference()V

    return-void
.end method
