.class Lcom/android/server/hdmi/HdmiControlService$BinderService$19;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendMhlVendorCommand(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$data:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V
    .registers 6

    .line 1971
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$offset:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$length:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1974
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_12

    .line 1975
    const-string v0, "Hdmi control is disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return-void

    .line 1978
    :cond_12
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1979
    if-nez v0, :cond_39

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void

    .line 1983
    :cond_39
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$portId:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$offset:I

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$length:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$data:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->sendVendorCommand(III[B)V

    .line 1984
    return-void
.end method