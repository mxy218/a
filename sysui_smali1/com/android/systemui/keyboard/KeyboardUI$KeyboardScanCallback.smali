.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V
    .registers 3

    .line 531
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method

.method private isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z
    .registers 2

    .line 534
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    .line 535
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 555
    invoke-direct {p0, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    if-le v3, v1, :cond_7

    .line 556
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 557
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    goto :goto_7

    :cond_28
    if-eqz v0, :cond_38

    .line 562
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_38
    return-void
.end method

.method public onScanFailed(I)V
    .registers 2

    .line 571
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 3

    .line 580
    invoke-direct {p0, p2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 581
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object p0

    const/4 p1, 0x6

    .line 582
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 581
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 582
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method
