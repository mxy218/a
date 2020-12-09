.class Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbGadgetCallback"
.end annotation


# instance fields
.field mChargingFunctions:Z

.field mFunctions:J

.field mRequest:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V
    .registers 2

    .line 1889
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 1890
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V
    .registers 6

    .line 1893
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 1894
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    .line 1895
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    .line 1896
    iput-boolean p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    .line 1897
    return-void
.end method


# virtual methods
.method public getCurrentUsbFunctionsCb(JI)V
    .registers 5

    .line 1923
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    const/16 p3, 0x10

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessage(ILjava/lang/Object;Z)V

    .line 1925
    return-void
.end method

.method public setCurrentUsbFunctionsCb(JI)V
    .registers 8

    .line 1905
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I

    move-result v0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1b

    goto :goto_60

    .line 1910
    :cond_1b
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-virtual {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1911
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyCurrentFunction request:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    if-nez p3, :cond_4b

    .line 1913
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    goto :goto_5f

    .line 1914
    :cond_4b
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    if-nez p1, :cond_5f

    .line 1915
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Setting default fuctions"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendEmptyMessage(I)Z

    .line 1918
    :cond_5f
    :goto_5f
    return-void

    .line 1907
    :cond_60
    :goto_60
    return-void
.end method
