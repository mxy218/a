.class public Lcom/meizu/settings/security/FlymeUninstallActivity;
.super Landroid/app/Activity;
.source "FlymeUninstallActivity.java"


# instance fields
.field private mSrcIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isAppProtected(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "access_control"

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/security/AccessControlManager;

    if-eqz p1, :cond_12

    .line 69
    invoke-virtual {p0, p1}, Lmeizu/security/AccessControlManager;->isAppProtected2(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private requestConfirmPassword()V
    .registers 4

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.CONFIRM_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "password_from"

    const/4 v2, 0x2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private requestUninstall()V
    .registers 6

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeUninstallActivity;->mSrcIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeUninstallActivity;->mSrcIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "need_intercept"

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 86
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 89
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2c

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 91
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    if-eqz v1, :cond_5e

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 97
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_61

    .line 99
    :cond_5e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_61
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_d

    const/4 p3, -0x1

    if-ne p2, p3, :cond_d

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeUninstallActivity;->requestUninstall()V

    goto :goto_1a

    :cond_d
    const/4 p3, 0x2

    if-ne p1, p3, :cond_17

    .line 59
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1a

    .line 62
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeUninstallActivity;->mSrcIntent:Landroid/content/Intent;

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeUninstallActivity;->mSrcIntent:Landroid/content/Intent;

    if-nez p1, :cond_10

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    :cond_10
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeUninstallActivity;->mSrcIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeUninstallActivity;->requestUninstall()V

    return-void

    .line 45
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeUninstallActivity;->isAppProtected(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeUninstallActivity;->requestConfirmPassword()V

    goto :goto_2d

    .line 49
    :cond_2a
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeUninstallActivity;->requestUninstall()V

    :goto_2d
    return-void
.end method
