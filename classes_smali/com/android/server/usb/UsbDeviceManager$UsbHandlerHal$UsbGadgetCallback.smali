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

    .line 2273
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 2274
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V
    .registers 6
    .param p2, "request"  # I
    .param p3, "functions"  # J
    .param p5, "chargingFunctions"  # Z

    .line 2277
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 2278
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    .line 2279
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    .line 2280
    iput-boolean p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    .line 2281
    return-void
.end method


# virtual methods
.method public getCurrentUsbFunctionsCb(JI)V
    .registers 8
    .param p1, "functions"  # J
    .param p3, "status"  # I

    .line 2307
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessage(ILjava/lang/Object;Z)V

    .line 2309
    return-void
.end method

.method public setCurrentUsbFunctionsCb(JI)V
    .registers 8
    .param p1, "functions"  # J
    .param p3, "status"  # I

    .line 2289
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$900(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I

    move-result v0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_1b

    goto :goto_60

    .line 2294
    :cond_1b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 2295
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCurrentFunction request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    if-nez p3, :cond_4b

    .line 2297
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    goto :goto_5f

    .line 2298
    :cond_4b
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    if-nez v0, :cond_5f

    .line 2299
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting default fuctions"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendEmptyMessage(I)Z

    .line 2302
    :cond_5f
    :goto_5f
    return-void

    .line 2291
    :cond_60
    :goto_60
    return-void
.end method
