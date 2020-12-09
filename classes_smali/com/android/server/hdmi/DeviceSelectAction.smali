.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 65
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 77
    iput-object p3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result p2

    .line 79
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .registers 6

    .line 130
    const/4 v0, 0x1

    if-eqz p1, :cond_3e

    if-eq p1, v0, :cond_32

    const/16 v1, 0x1388

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_20

    if-eq p1, v2, :cond_f

    .line 158
    const/4 p1, 0x0

    return p1

    .line 135
    :cond_f
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_1c

    .line 136
    iput v3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 137
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_1f

    .line 139
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 141
    :goto_1f
    return v0

    .line 150
    :cond_20
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/16 v3, 0x14

    if-ge p1, v3, :cond_2e

    .line 151
    iput v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 152
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_31

    .line 154
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 156
    :goto_31
    return v0

    .line 143
    :cond_32
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    if-nez p1, :cond_3a

    .line 144
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->turnOnDevice()V

    goto :goto_3d

    .line 146
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 148
    :goto_3d
    return v0

    .line 132
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 133
    return v0
.end method

.method private invokeCallback(I)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

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
    goto :goto_20

    .line 210
    :catch_9
    move-exception p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceSelect"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_20
    return-void
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 106
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 107
    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    .line 175
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 179
    return-void
.end method

.method private turnOnDevice()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 166
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 167
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 168
    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 183
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    if-eq v0, p1, :cond_c

    .line 184
    const-string p1, "DeviceSelect"

    const-string v0, "Timer in a wrong state. Ignored."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 187
    :cond_c
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v1, 0x2

    if-eq p1, v1, :cond_18

    const/4 v1, 0x3

    if-eq p1, v1, :cond_18

    goto :goto_37

    .line 198
    :cond_18
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 199
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    goto :goto_37

    .line 189
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 190
    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 192
    return-void

    .line 194
    :cond_33
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    .line 195
    nop

    .line 202
    :goto_37
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 111
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 112
    return v2

    .line 114
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 117
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    .line 126
    return v2

    .line 119
    :cond_1a
    const/16 v1, 0x90

    if-ne v0, v1, :cond_25

    .line 120
    aget-byte p1, p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->handleReportPowerStatus(I)Z

    move-result p1

    return p1

    .line 122
    :cond_25
    return v2
.end method

.method public start()Z
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
