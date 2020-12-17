.class public Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestIgnoreBatteryOptimizations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    goto :goto_17

    .line 106
    :cond_4
    :try_start_4
    iget-object p2, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p2

    const-string v0, "RequestIgnoreBatteryOptimizations"

    const-string v1, "Unable to reach IDeviceIdleController"

    .line 108
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    :goto_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "deviceidle"

    .line 49
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    const-string v1, "RequestIgnoreBatteryOptimizations"

    if-nez p1, :cond_37

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 58
    :cond_37
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_5b

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 66
    :cond_5b
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not should prompt, already ignoring optimizations: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 75
    :cond_85
    :try_start_85
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_90} :catch_fb

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    const-string v4, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not hold permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 91
    :cond_c0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f1209dc

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v1, 0x7f1209db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p1, 0x7f120114

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const p1, 0x7f1206b4

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    .line 77
    :catch_fb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested package doesn\'t exist: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
