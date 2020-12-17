.class public Lcom/android/settings/location/AppSettingsInjector;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Landroidx/preference/Preference;
    .registers 3

    .line 69
    iget-object p0, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 70
    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object p0

    goto :goto_11

    .line 71
    :cond_d
    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;

    move-result-object p2

    .line 58
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_13

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->showIzat(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p2, 0x0

    :cond_13
    return-object p2
.end method
