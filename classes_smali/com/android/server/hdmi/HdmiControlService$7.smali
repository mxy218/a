.class Lcom/android/server/hdmi/HdmiControlService$7;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->changeInputForMhl(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$lastInput:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 2875
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$7;->val$lastInput:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2881
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$7;->val$lastInput:I

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 2882
    return-void
.end method
