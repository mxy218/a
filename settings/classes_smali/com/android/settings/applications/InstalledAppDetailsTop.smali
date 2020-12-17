.class public Lcom/android/settings/applications/InstalledAppDetailsTop;
.super Lcom/android/settings/SettingsActivity;
.source "InstalledAppDetailsTop.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 3

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result p0

    const-string v1, ":settings:show_fragment"

    if-eqz p0, :cond_1b

    .line 36
    const-class p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24

    .line 38
    :cond_1b
    const-class p0, Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_24
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 3

    .line 49
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    .line 50
    const-class p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    .line 54
    :cond_14
    const-class p0, Lcom/meizu/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
