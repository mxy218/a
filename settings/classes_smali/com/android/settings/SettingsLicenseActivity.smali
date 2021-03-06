.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/FragmentActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .registers 3

    const v0, 0x7f1213a0

    const/4 v1, 0x1

    .line 117
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showGeneratedHtmlFile(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->getUriFromGeneratedHtmlFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromUri(Landroid/net/Uri;)V

    goto :goto_14

    :cond_a
    const-string p1, "SettingsLicenseActivity"

    const-string v0, "Failed to generate."

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    :goto_14
    return-void
.end method

.method private showHtmlFromDefaultXmlFiles()V
    .registers 4

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private showHtmlFromUri(Landroid/net/Uri;)V
    .registers 5

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/html"

    .line 99
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f12139f

    .line 100
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x1

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_29
    const-string p1, "android.intent.category.DEFAULT"

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.htmlviewer"

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :try_start_33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_45

    :catch_3a
    move-exception p1

    const-string v0, "SettingsLicenseActivity"

    const-string v1, "Failed to find viewer"

    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    :goto_45
    return-void
.end method


# virtual methods
.method getUriFromGeneratedHtmlFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "com.android.settings.files"

    .line 81
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method isFileValid(Ljava/io/File;)Z
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Ljava/io/File;

    const-string v0, "/system/etc/NOTICE.html.gz"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromUri(Landroid/net/Uri;)V

    goto :goto_1b

    .line 57
    :cond_18
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromDefaultXmlFiles()V

    :goto_1b
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;

    invoke-direct {p1, p0}, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsLicenseActivity;->showGeneratedHtmlFile(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 41
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsLicenseActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/io/File;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
