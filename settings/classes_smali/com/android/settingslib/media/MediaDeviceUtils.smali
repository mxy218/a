.class public Lcom/android/settingslib/media/MediaDeviceUtils;
.super Ljava/lang/Object;
.source "MediaDeviceUtils.java"


# direct methods
.method public static getId(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 1

    .line 45
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
