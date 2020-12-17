.class Lcom/android/server/usb/UsbDeviceManager$6$1;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$6;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$6;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$1"  # Lcom/android/server/usb/UsbDeviceManager$6;

    .line 2699
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$6$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$6;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$6$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2702
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$6$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Landroid/content/Context;)V

    .line 2703
    return-void
.end method
