.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$MeizuBatteryLevelChangedHandler;
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
    name = "MeizuBatteryLevelChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$MeizuBatteryLevelChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .registers 3

    .line 498
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$MeizuBatteryLevelChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 501
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$MeizuBatteryLevelChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_1d

    const-string p3, "android.bluetooth.headset.extra.HF_MEIZU_LEFT_BATTERY_LEVEL"

    .line 505
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "android.bluetooth.headset.extra.HF_MEIZU_RIGHT_BATTERY_LEVEL"

    .line 506
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 507
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_1f

    :cond_1d
    move p2, p1

    move p3, p2

    :goto_1f
    if-eq p3, p1, :cond_23

    .line 510
    iput p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMeizuLeftBatteryLevel:I

    :cond_23
    if-eq p2, p1, :cond_27

    .line 513
    iput p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMeizuRightBatteryLevel:I

    :cond_27
    return-void
.end method
