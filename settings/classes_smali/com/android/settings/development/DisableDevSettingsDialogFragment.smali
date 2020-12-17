.class public Lcom/android/settings/development/DisableDevSettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisableDevSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/settings/development/DisableDevSettingsDialogFragment;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 41
    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    return-object v0
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "DisableDevSettingDlg"

    .line 49
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x637

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 74
    instance-of v0, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v0, :cond_f

    const-string v0, "DisableDevSettingDlg"

    const-string v1, "getTargetFragment return unexpected type"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_f
    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_28

    .line 81
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDisableDevelopmentOptionsConfirmed()V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_2b

    .line 85
    :cond_28
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDisableDevelopmentOptionsRejected()V

    :goto_2b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 61
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12034d

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12034e

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12034c

    .line 64
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12034b

    .line 66
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
