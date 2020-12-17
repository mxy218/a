.class Lcom/android/systemui/usb/UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDisconnectedReceiver.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mActivity:Landroid/app/Activity;

.field private mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 47
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 39
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p1, "device"

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_43

    .line 56
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 57
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_43

    :cond_24
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const-string p1, "accessory"

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_43

    .line 62
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 63
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_43
    :goto_43
    return-void
.end method
