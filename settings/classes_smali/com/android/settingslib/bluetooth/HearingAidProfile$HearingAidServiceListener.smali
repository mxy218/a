.class final Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HearingAidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HearingAidServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;Lcom/android/settingslib/bluetooth/HearingAidProfile$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$002(Lcom/android/settingslib/bluetooth/HearingAidProfile;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$000(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 57
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5a

    const/4 p2, 0x0

    .line 58
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_50

    .line 62
    invoke-static {}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$200()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HearingAidProfile found new device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_46
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 67
    :cond_50
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 69
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_11

    .line 73
    :cond_5a
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateHearingAidsDevices()V

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$302(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$400(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$302(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z

    return-void
.end method
