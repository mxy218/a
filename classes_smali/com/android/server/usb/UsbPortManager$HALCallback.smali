.class Lcom/android/server/usb/UsbPortManager$HALCallback;
.super Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HALCallback"
.end annotation


# instance fields
.field public portManager:Lcom/android/server/usb/UsbPortManager;

.field public pw:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V
    .registers 3
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "portManager"  # Lcom/android/server/usb/UsbPortManager;

    .line 620
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 622
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    .line 623
    return-void
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .registers 22
    .param p2, "retval"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 627
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 628
    return-void

    .line 631
    :cond_b
    if-eqz p2, :cond_17

    .line 632
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 639
    .local v3, "current":Landroid/hardware/usb/V1_0/PortStatus;
    new-instance v18, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v5, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v7, 0x0

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v17}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 647
    .local v4, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const/4 v5, 0x4

    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 649
    .end local v3  # "current":Landroid/hardware/usb/V1_0/PortStatus;
    .end local v4  # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_20

    .line 651
    :cond_67
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 652
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "port_info"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 654
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 655
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 656
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .registers 24
    .param p2, "retval"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .line 662
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_1/PortStatus_1_1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 663
    return-void

    .line 666
    :cond_b
    if-eqz p2, :cond_17

    .line 667
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 668
    return-void

    .line 671
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 674
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_78

    .line 675
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 676
    .local v5, "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    new-instance v20, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v9, 0x0

    iget v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v6, v20

    invoke-direct/range {v6 .. v19}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    .line 684
    .local v6, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const/4 v7, 0x4

    iget-object v8, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClientCallback V1_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v10, v10, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 674
    .end local v5  # "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    .end local v6  # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_78
    move-object/from16 v4, p1

    .line 688
    .end local v3  # "i":I
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 689
    .local v3, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 690
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "port_info"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 691
    const/4 v6, 0x1

    iput v6, v3, Landroid/os/Message;->what:I

    .line 692
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 693
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .registers 26
    .param p2, "retval"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_2/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 698
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_2/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 699
    return-void

    .line 702
    :cond_b
    if-eqz p2, :cond_17

    .line 703
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 704
    return-void

    .line 707
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 710
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_9b

    .line 711
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_2/PortStatus;

    .line 712
    .local v5, "current":Landroid/hardware/usb/V1_2/PortStatus;
    new-instance v20, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v8, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v10, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    iget-boolean v6, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v21, v2

    .end local v2  # "numStatus":I
    .local v21, "numStatus":I
    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    iget-boolean v4, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v22, v3

    .end local v3  # "i":I
    .local v22, "i":I
    iget v3, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    move/from16 v16, v6

    move-object/from16 v6, v20

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v3

    invoke-direct/range {v6 .. v19}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    move-object/from16 v2, v20

    .line 725
    .local v2, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    const/4 v3, 0x4

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback V1_2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 710
    .end local v2  # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v5  # "current":Landroid/hardware/usb/V1_2/PortStatus;
    add-int/lit8 v3, v22, 0x1

    move/from16 v2, v21

    .end local v22  # "i":I
    .restart local v3  # "i":I
    goto :goto_21

    .end local v21  # "numStatus":I
    .local v2, "numStatus":I
    :cond_9b
    move/from16 v21, v2

    move/from16 v22, v3

    .line 730
    .end local v2  # "numStatus":I
    .end local v3  # "i":I
    .restart local v21  # "numStatus":I
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 731
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 732
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "port_info"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 733
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 734
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 735
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .registers 8
    .param p1, "portName"  # Ljava/lang/String;
    .param p2, "role"  # Landroid/hardware/usb/V1_0/PortRole;
    .param p3, "retval"  # I

    .line 739
    if-nez p3, :cond_1a

    .line 740
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_31

    .line 742
    :cond_1a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 744
    :goto_31
    return-void
.end method
