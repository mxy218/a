.class Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 162
    nop

    .line 163
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 164
    iget-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p1}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 165
    iget-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p1}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/usb/UsbDeviceManager;->updateUserRestrictions()V

    .line 168
    :cond_1e
    return-void
.end method
