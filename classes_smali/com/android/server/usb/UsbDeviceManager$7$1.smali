.class Lcom/android/server/usb/UsbDeviceManager$7$1;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$7;

.field final synthetic val$msg:Landroid/telephony/SmsMessage;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$7;Landroid/telephony/SmsMessage;)V
    .registers 3
    .param p1, "this$1"  # Lcom/android/server/usb/UsbDeviceManager$7;

    .line 2898
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$7$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$7;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$7$1;->val$msg:Landroid/telephony/SmsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2901
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$7$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$7;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$7;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$7$1;->val$msg:Landroid/telephony/SmsMessage;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;Landroid/telephony/SmsMessage;)V

    .line 2902
    return-void
.end method
