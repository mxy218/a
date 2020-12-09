.class final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAutoInitiationAction.java"


# static fields
.field private static final STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS:I = 0x1


# instance fields
.field private final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 35
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    return-void
.end method

.method private canChangeSystemAudio()Z
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 123
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 122
    :goto_1b
    return v0
.end method

.method private handleSystemAudioModeStatusMessage(Z)V
    .registers 6

    .line 74
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v0

    if-nez v0, :cond_12

    .line 75
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Cannot change system audio mode in auto initiation action."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 77
    return-void

    .line 82
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    .line 83
    if-eq p1, v0, :cond_2c

    .line 85
    new-instance p1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_33

    .line 90
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 92
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 93
    return-void
.end method

.method private handleSystemAudioModeStatusTimeout()V
    .registers 6

    .line 109
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v0

    if-nez v0, :cond_12

    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot change system audio mode in auto initiation action."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 112
    return-void

    .line 116
    :cond_12
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 119
    return-void
.end method

.method private sendGiveSystemAudioModeStatus()V
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 57
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3

    .line 97
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 98
    return-void

    .line 101
    :cond_5
    iget p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    goto :goto_e

    .line 103
    :cond_b
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    .line 106
    :goto_e
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 61
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 62
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_20

    .line 66
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_1f

    .line 67
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusMessage(Z)V

    .line 68
    return v2

    .line 70
    :cond_1f
    return v1

    .line 63
    :cond_20
    :goto_20
    return v1
.end method

.method start()Z
    .registers 4

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    .line 42
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addTimer(II)V

    .line 43
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V

    .line 44
    return v0
.end method