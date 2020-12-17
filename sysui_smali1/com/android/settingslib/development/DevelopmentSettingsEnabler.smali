.class public Lcom/android/settingslib/development/DevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "DevelopmentSettingsEnabler.java"


# direct methods
.method public static isDevelopmentSettingsEnabled(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v0, "user"

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 46
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "userdebug"

    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    move v1, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v3

    :goto_28
    const-string v4, "development_settings_enabled"

    .line 44
    invoke-static {p0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_32

    move p0, v3

    goto :goto_33

    :cond_32
    move p0, v2

    :goto_33
    const-string v1, "no_debugging_features"

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 50
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_44

    if-nez v1, :cond_44

    if-eqz p0, :cond_44

    move v2, v3

    :cond_44
    return v2
.end method
