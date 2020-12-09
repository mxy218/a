.class Lcom/android/server/hdmi/TimerRecordingAction$1;
.super Ljava/lang/Object;
.source "TimerRecordingAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/TimerRecordingAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/TimerRecordingAction;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4

    .line 84
    const/4 v0, 0x1

    if-eqz p1, :cond_18

    .line 85
    iget-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-static {v1}, Lcom/android/server/hdmi/TimerRecordingAction;->access$000(Lcom/android/server/hdmi/TimerRecordingAction;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 87
    iget-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 88
    return-void

    .line 90
    :cond_18
    iget-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    iput v0, p1, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    .line 91
    iget v0, p1, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    const v1, 0x1d4c0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/TimerRecordingAction;->addTimer(II)V

    .line 92
    return-void
.end method
