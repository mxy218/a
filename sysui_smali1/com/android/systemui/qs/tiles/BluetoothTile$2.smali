.class Lcom/android/systemui/qs/tiles/BluetoothTile$2;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, 0x1

    return p0

    .line 647
    :cond_c
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 648
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$2000(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$2000(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    sub-int/2addr v0, v1

    .line 649
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    sub-int/2addr v1, p0

    if-eqz v1, :cond_49

    return v1

    :cond_49
    if-eqz v0, :cond_4c

    return v0

    .line 654
    :cond_4c
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_58

    return p0

    .line 658
    :cond_58
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_64

    return p0

    .line 662
    :cond_64
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 639
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->compare(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method
