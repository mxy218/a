.class final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RoutingControlAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x2

.field private static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoutingControlAction"

.field private static final TIMEOUT_REPORT_POWER_STATUS_MS:I = 0x3e8

.field private static final TIMEOUT_ROUTING_INFORMATION_MS:I = 0x3e8


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mCurrentRoutingPath:I

.field private final mNotifyInputChange:Z

.field private final mQueryDevicePowerStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 77
    iput-object p4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 79
    iput-boolean p3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    .line 84
    if-nez p4, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/RoutingControlAction;Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->handlDevicePowerStatusAckResult(Z)V

    return-void
.end method

.method private finishWithCallback(I)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->invokeCallback(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->finish()V

    .line 153
    return-void
.end method

.method private getTvPowerStatus()I
    .registers 2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method private handlDevicePowerStatusAckResult(Z)V
    .registers 3

    .line 194
    if-eqz p1, :cond_d

    .line 195
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 196
    iget p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    goto :goto_17

    .line 198
    :cond_d
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 200
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 202
    :goto_17
    return-void
.end method

.method private handleReportPowerStatus(I)V
    .registers 3

    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 123
    invoke-static {p1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 127
    :cond_16
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 128
    return-void
.end method

.method private invokeCallback(I)V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_5

    .line 206
    return-void

    .line 209
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 212
    goto :goto_a

    .line 210
    :catch_9
    move-exception p1

    .line 213
    :goto_a
    return-void
.end method

.method private static isPowerOnOrTransient(I)Z
    .registers 2

    .line 141
    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method private queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4

    .line 189
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 191
    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 148
    return-void
.end method

.method private updateActiveInput()V
    .registers 4

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 133
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 134
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 4

    .line 157
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-ne v0, p1, :cond_49

    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-nez v0, :cond_9

    goto :goto_49

    .line 161
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    .line 186
    return-void

    .line 179
    :cond_11
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 180
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 183
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 184
    return-void

    .line 163
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 164
    if-eqz p1, :cond_42

    iget-boolean v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    if-eqz v0, :cond_42

    .line 165
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 166
    new-instance v0, Lcom/android/server/hdmi/RoutingControlAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/RoutingControlAction$1;-><init>(Lcom/android/server/hdmi/RoutingControlAction;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/RoutingControlAction;->queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 173
    goto :goto_48

    .line 174
    :cond_42
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 175
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 177
    :goto_48
    return-void

    .line 158
    :cond_49
    :goto_49
    const-string p1, "CEC"

    const-string v0, "Timer in a wrong state. Ignored."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    const/16 v2, 0x81

    if-ne v0, v2, :cond_2d

    .line 103
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result p1

    .line 104
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 105
    return v3

    .line 107
    :cond_1e
    iput p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 109
    const-class p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, p1, p0}, Lcom/android/server/hdmi/RoutingControlAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 110
    iget p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 111
    return v3

    .line 112
    :cond_2d
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_41

    const/16 v1, 0x90

    if-ne v0, v1, :cond_41

    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v4

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->handleReportPowerStatus(I)V

    .line 115
    return v3

    .line 117
    :cond_41
    return v4
.end method

.method public start()Z
    .registers 4

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 90
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 91
    return v0
.end method
