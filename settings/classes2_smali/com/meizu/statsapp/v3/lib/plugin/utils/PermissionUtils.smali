.class public Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionUtils"


# direct methods
.method public static checkInternetPermission(Landroid/content/Context;)Z
    .registers 4

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    if-nez p0, :cond_e

    goto :goto_27

    :cond_e
    const-string v2, "android.permission.INTERNET"

    .line 23
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_25

    .line 24
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v0, "Package does not have permission android.permission.INTERNET - usage will not work at all!"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v0, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    const/4 p0, 0x1

    return p0

    .line 20
    :cond_27
    :goto_27
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t check configuration when using a Context with null packageManager or packageName"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
