.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 p3, -0x80000000

    .line 289
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 294
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object p2

    monitor-enter p2

    .line 295
    :try_start_18
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_22
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 296
    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_22

    .line 298
    :cond_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_3d

    .line 300
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    return-void

    :catchall_3d
    move-exception p0

    .line 298
    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method
