.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .registers 3

    .line 45
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device_address"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "device_address"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x407

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$ForgetDeviceDialogFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 68
    iget-object p1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    .line 67
    new-instance p1, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;-><init>(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 76
    iget-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 77
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x6

    .line 76
    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    .line 79
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120400

    .line 80
    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v2, 0x7f120401

    .line 84
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    if-eqz v1, :cond_3d

    const v1, 0x7f120403

    goto :goto_40

    :cond_3d
    const v1, 0x7f1203ff

    :goto_40
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 87
    iget-object p0, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 88
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method
