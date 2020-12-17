.class final Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/MapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/MapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$1;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6

    const-string p1, "MapProfile"

    if-nez p2, :cond_a

    const-string p0, "onServiceConnected: bluetooth proxy null."

    .line 64
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_a
    invoke-static {}, Lcom/android/settingslib/bluetooth/MapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    invoke-static {v0, p2}, Lcom/android/settingslib/bluetooth/MapProfile;->access$102(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 71
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/MapProfile;->access$100(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 72
    :goto_26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    const/4 v0, 0x0

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 74
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_5d

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 80
    :cond_5d
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 82
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_26

    .line 85
    :cond_67
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$300(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$402(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$300(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/MapProfile;->access$402(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z

    return-void
.end method
