.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 308
    const-string/jumbo v0, "port"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/ParcelableUsbPort;

    .line 309
    const-string/jumbo v1, "portStatus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    .line 310
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    const-class v2, Landroid/hardware/usb/UsbManager;

    .line 311
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/ParcelableUsbPort;->getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;

    move-result-object p1

    .line 310
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V

    .line 312
    return-void
.end method
