.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field final synthetic val$recorderAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V
    .registers 3

    .line 1833
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->val$recorderAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4

    .line 1836
    if-eqz p1, :cond_b

    .line 1837
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->val$recorderAddress:I

    const/16 v1, 0xa1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1840
    :cond_b
    return-void
.end method
