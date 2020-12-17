.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .registers 3

    .line 381
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    packed-switch p3, :pswitch_data_2a

    .line 442
    :pswitch_3  #0x3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :pswitch_1b  #0x5, 0x6, 0x7, 0x8
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    goto :goto_26

    .line 433
    :pswitch_1e  #0x4
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_error_message:I

    goto :goto_26

    .line 430
    :pswitch_21  #0x2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_rejected_error_message:I

    goto :goto_26

    .line 427
    :pswitch_24  #0x1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_pairing_pin_error_message:I

    .line 445
    :goto_26
    invoke-static {p1, p2, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_21  #00000002
        :pswitch_3  #00000003
        :pswitch_1e  #00000004
        :pswitch_1b  #00000005
        :pswitch_1b  #00000006
        :pswitch_1b  #00000007
        :pswitch_1b  #00000008
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 11

    if-nez p3, :cond_a

    const-string p0, "BluetoothEventManager"

    const-string p1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    .line 385
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    .line 388
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_43

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but we have no record of that device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothEventManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 397
    :cond_43
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object p3

    monitor-enter p3

    .line 398
    :try_start_4a
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 399
    invoke-interface {v4, v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_54

    .line 401
    :cond_64
    monitor-exit p3
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_8d

    .line 402
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    const/16 p3, 0xa

    if-ne v1, p3, :cond_8c

    .line 406
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_7f

    .line 407
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onDeviceUnpaired(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_7f
    const-string p3, "android.bluetooth.device.extra.REASON"

    .line 409
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 412
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_8c
    return-void

    :catchall_8d
    move-exception p0

    .line 401
    :try_start_8e
    monitor-exit p3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method
