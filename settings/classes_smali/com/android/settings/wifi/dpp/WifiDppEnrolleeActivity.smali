.class public Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppEnrolleeActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 6

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7c1bddca

    if-eq v1, v3, :cond_f

    goto :goto_19

    :cond_f
    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, -0x1

    :goto_1a
    if-eqz v0, :cond_27

    const-string p1, "WifiDppEnrolleeActivity"

    const-string v0, "Launch with an invalid action"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_31

    :cond_27
    const-string/jumbo v0, "ssid"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->showQrCodeScannerFragment(ZLjava/lang/String;)V

    :goto_31
    return-void
.end method

.method private showQrCodeScannerFragment(ZLjava/lang/String;)V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string/jumbo v1, "qr_code_scanner_fragment"

    .line 90
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_28

    .line 94
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p2, 0x7f0a02e8

    .line 107
    invoke-virtual {p0, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    :cond_24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 96
    :cond_28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2f

    return-void

    .line 102
    :cond_2f
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x63c

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f13013b

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_13
    const v0, 0x7f0d03b2

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p1, :cond_28

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->handleIntent(Landroid/content/Intent;)V

    .line 69
    :cond_28
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_36

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setElevation(F)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_36
    return-void
.end method

.method public onNavigateUp()Z
    .registers 1

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .registers 2

    return-void
.end method
