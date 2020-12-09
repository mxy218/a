.class Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field final synthetic val$finished:[I

.field final synthetic val$initiatedBy:I

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .registers 7

    .line 735
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .registers 6

    .line 738
    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne p2, v1, :cond_21

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to allocate address:[device_type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 743
    :cond_21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1500(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 745
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecController;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 747
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    .line 748
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :goto_47
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$finished:[I

    aget v1, p2, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p2, v0

    if-ne p1, v1, :cond_78

    .line 753
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1602(Lcom/android/server/hdmi/HdmiControlService;Z)Z

    .line 754
    iget p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_66

    .line 757
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1700(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 759
    :cond_66
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->val$initiatedBy:I

    invoke-static {p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1800(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    .line 760
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->access$1900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V

    .line 762
    :cond_78
    return-void
.end method
