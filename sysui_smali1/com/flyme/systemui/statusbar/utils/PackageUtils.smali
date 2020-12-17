.class public Lcom/flyme/systemui/statusbar/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public static checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    const-string v1, ""

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_17

    .line 77
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_15} :catch_17

    const/4 p0, 0x1

    return p0

    :catch_17
    :cond_17
    :goto_17
    return v0
.end method

.method public static hasLauncherActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "launcherapps"

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    if-eqz p0, :cond_25

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_21

    if-lez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    :catch_21
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    return v0
.end method
