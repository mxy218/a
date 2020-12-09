.class public Lcom/android/server/hdmi/OneTouchRecordAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchRecordAction.java"


# static fields
.field private static final RECORD_STATUS_TIMEOUT_MS:I = 0x1d4c0

.field private static final STATE_RECORDING_IN_PROGRESS:I = 0x2

.field private static final STATE_WAITING_FOR_RECORD_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchRecordAction"


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V
    .registers 4

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 48
    iput p2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 49
    iput-object p3, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/OneTouchRecordAction;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    return p0
.end method

.method private handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 93
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 94
    return v2

    .line 97
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got record status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTouchRecordAction"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    if-eq v0, p1, :cond_4b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4b

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    goto :goto_53

    .line 108
    :cond_4b
    iput p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    .line 109
    iget-object p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 110
    nop

    .line 115
    :goto_53
    return v1
.end method

.method private sendRecordOn()V
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/OneTouchRecordAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/OneTouchRecordAction$1;-><init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    const v1, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->addTimer(II)V

    .line 76
    return-void
.end method


# virtual methods
.method getRecorderAddress()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    return v0
.end method

.method handleTimerEvent(I)V
    .registers 4

    .line 120
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    if-eq v0, p1, :cond_2a

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout in invalid state:[Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTouchRecordAction"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->finish()V

    .line 128
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 80
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v0, v2, :cond_f

    goto :goto_1d

    .line 84
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_18

    .line 88
    return v1

    .line 86
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/OneTouchRecordAction;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1

    .line 81
    :cond_1d
    :goto_1d
    return v1
.end method

.method start()Z
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchRecordAction;->sendRecordOn()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
