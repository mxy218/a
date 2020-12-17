.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothPairingDetail.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mInitialScanStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "no_config_bluetooth"

    .line 59
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method enableScanning()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    if-nez v0, :cond_17

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_b

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    .line 130
    :cond_17
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    return-void
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .registers 1

    const-string p0, "available_devices"

    return-object p0
.end method

.method public getHelpResource()I
    .registers 1

    const p0, 0x7f120996

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "BluetoothPairingDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x3fa

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f160031

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .registers 2

    const-string v0, "available_devices"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const-string v0, "footer_preference"

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 112
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    .line 66
    new-instance p1, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .registers 3

    .line 169
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->showBluetoothTurnedOnToast()V

    :cond_d
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_18

    .line 196
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x2

    if-ne p2, p1, :cond_18

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_18
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 4

    const/16 v0, 0xc

    if-ne p2, v0, :cond_8

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 184
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/16 p1, 0xa

    if-ne p2, p1, :cond_23

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    :cond_23
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->disableScanning()V

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 3

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_f

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateBluetooth()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 98
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_f

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->disableScanning()V

    return-void
.end method

.method showBluetoothTurnedOnToast()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12055f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method updateBluetooth()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    goto :goto_17

    .line 92
    :cond_12
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_17
    return-void
.end method

.method updateContent(I)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2d

    const/16 v0, 0xc

    if-eq p1, v0, :cond_9

    goto :goto_30

    .line 150
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 151
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 153
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v0, 0x7f1203b7

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateFooterPreference(Landroidx/preference/Preference;)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    goto :goto_30

    .line 162
    :cond_2d
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_30
    return-void
.end method
