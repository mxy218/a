.class Lcom/android/server/usb/UsbDeviceManager$2;
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

    .line 315
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 318
    const-string/jumbo p1, "plugged"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 319
    const/4 p2, 0x2

    if-ne p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 320
    :goto_e
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p2}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p2, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 321
    return-void
.end method
