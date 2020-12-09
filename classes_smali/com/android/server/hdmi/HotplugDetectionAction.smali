.class final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "HotplugDetectionAction.java"


# static fields
.field private static final AVR_COUNT_MAX:I = 0x3

.field private static final NUM_OF_ADDRESS:I = 0xf

.field private static final POLLING_INTERVAL_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_POLLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotPlugDetectionAction"

.field private static final TIMEOUT_COUNT:I = 0x3


# instance fields
.field private mAvrStatusCount:I

.field private mTimeoutCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 50
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 56
    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->checkHotplug(Ljava/util/List;Z)V

    return-void
.end method

.method private addDevice(I)V
    .registers 3

    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 220
    return-void
.end method

.method private static addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 204
    goto :goto_b

    .line 205
    :cond_1f
    return-object v0
.end method

.method private checkHotplug(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;

    move-result-object p2

    .line 152
    invoke-static {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;

    move-result-object p1

    .line 155
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    .line 156
    const/4 v2, -0x1

    move v3, v2

    .line 157
    :goto_17
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    const/4 v4, 0x5

    const-string v5, "HotPlugDetectionAction"

    if-eq v3, v2, :cond_76

    .line 158
    if-ne v3, v4, :cond_5e

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    .line 160
    if-eqz v4, :cond_5e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 161
    iget v4, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack not returned from AVR. count: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v4, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const/4 v6, 0x3

    if-ge v4, v6, :cond_5e

    .line 164
    goto :goto_17

    .line 168
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove device by hot-plug detection:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeDevice(I)V

    goto :goto_17

    .line 173
    :cond_76
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 174
    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 178
    :cond_7e
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object p1

    .line 179
    move p2, v2

    .line 180
    :goto_83
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p2

    if-eq p2, v2, :cond_a3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add device by hot-plug detection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->addDevice(I)V

    goto :goto_83

    .line 184
    :cond_a3
    return-void
.end method

.method private static complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;
    .registers 2

    .line 211
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    .line 212
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 213
    return-object p0
.end method

.method private static infoListToBitSet(Ljava/util/List;Z)Ljava/util/BitSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;Z)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 189
    if-eqz p1, :cond_28

    .line 190
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2f

    .line 191
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2f

    .line 194
    :cond_28
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 196
    :cond_2f
    :goto_2f
    goto :goto_b

    .line 197
    :cond_30
    return-object v0
.end method

.method private mayCancelDeviceSelect(I)V
    .registers 4

    .line 239
    const-class v0, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 241
    return-void

    .line 245
    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceSelectAction;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v0

    if-ne v0, p1, :cond_1f

    .line 247
    const-class p1, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Ljava/lang/Class;)V

    .line 249
    :cond_1f
    return-void
.end method

.method private mayCancelOneTouchRecord(I)V
    .registers 5

    .line 252
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 254
    invoke-virtual {v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 257
    :cond_1f
    goto :goto_a

    .line 258
    :cond_20
    return-void
.end method

.method private mayChangeRoutingPath(I)V
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 233
    if-eqz p1, :cond_15

    .line 234
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleRemoveActiveRoutingPath(I)V

    .line 236
    :cond_15
    return-void
.end method

.method private mayDisableSystemAudioAndARC(I)V
    .registers 4

    .line 261
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    .line 262
    return-void

    .line 265
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 267
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 268
    new-instance v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 270
    :cond_2d
    return-void
.end method

.method private pollAllDevices()V
    .registers 4

    .line 127
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll all devices."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10001

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 136
    return-void
.end method

.method private pollAudioSystem()V
    .registers 4

    .line 139
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll audio system."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$2;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10002

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 148
    return-void
.end method

.method private pollDevices()V
    .registers 3

    .line 115
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    if-nez v0, :cond_8

    .line 116
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    goto :goto_15

    .line 118
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 119
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V

    .line 123
    :cond_15
    :goto_15
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 124
    return-void
.end method

.method private removeDevice(I)V
    .registers 3

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayChangeRoutingPath(I)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelDeviceSelect(I)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelOneTouchRecord(I)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayDisableSystemAudioAndARC(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecDevice(I)V

    .line 229
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3

    .line 88
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 89
    return-void

    .line 92
    :cond_5
    iget p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 93
    iget p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 94
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices()V

    .line 96
    :cond_14
    return-void
.end method

.method pollAllDevicesNow()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    .line 107
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 109
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 110
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    .line 83
    const/4 p1, 0x0

    return p1
.end method

.method start()Z
    .registers 4

    .line 69
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Hot-plug dection started."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 76
    iget v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v2, 0x1388

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 77
    return v0
.end method