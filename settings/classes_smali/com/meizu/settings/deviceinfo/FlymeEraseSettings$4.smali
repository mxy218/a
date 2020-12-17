.class Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;
.super Ljava/lang/Object;
.source "FlymeEraseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->startNetworkReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;Landroid/content/Context;)V
    .registers 3

    .line 374
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->val$context:Landroid/content/Context;

    const-string v1, "bluetooth"

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 381
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 383
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 384
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 386
    :cond_1c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 387
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->val$context:Landroid/content/Context;

    .line 388
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 391
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    .line 396
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;->access$600(Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;)V

    .line 397
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f1211ac

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
