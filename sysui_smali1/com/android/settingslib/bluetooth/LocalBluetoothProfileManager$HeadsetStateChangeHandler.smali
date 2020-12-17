.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;
.super Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetStateChangeHandler"
.end annotation


# instance fields
.field private final mAudioChangeAction:Ljava/lang/String;

.field private final mAudioDisconnectedState:I

.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;I)V
    .registers 5

    .line 329
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 331
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioChangeAction:Ljava/lang/String;

    .line 332
    iput p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioDisconnectedState:I

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioChangeAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 338
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 339
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->mAudioDisconnectedState:I

    if-eq p1, v0, :cond_1d

    .line 340
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 344
    :cond_1d
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 345
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result p2

    if-nez p2, :cond_43

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 346
    :cond_43
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_2b

    .line 350
    :cond_47
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceiveInternal(Landroid/content/Intent;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_4a
    return-void
.end method
