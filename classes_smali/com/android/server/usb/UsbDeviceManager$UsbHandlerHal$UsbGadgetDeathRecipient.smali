.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UsbGadgetDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V
    .registers 2

    .line 1803
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 6

    .line 1806
    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-nez v0, :cond_30

    .line 1807
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb Gadget hal service died cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1809
    :try_start_25
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$602(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1810
    monitor-exit p1

    goto :goto_30

    :catchall_2d
    move-exception p2

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2d

    throw p2

    .line 1812
    :cond_30
    :goto_30
    return-void
.end method
