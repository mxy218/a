.class final Lcom/android/settingslib/bluetooth/OppProfile;
.super Ljava/lang/Object;
.source "OppProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 3

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "OPP"

    return-object p0
.end method
