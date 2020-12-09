.class abstract Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceSource"


# instance fields
.field protected mIsActiveSource:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mIsSwitchDevice:Z

.field protected mLocalActivePort:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation
.end field

.field protected mRoutingControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRoutingPort:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    .line 47
    const-string/jumbo p2, "ro.hdmi.property_is_device_hdmi_cec_switch"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    .line 55
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 65
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    .line 75
    return-void
.end method


# virtual methods
.method protected getLocalActivePort()I
    .registers 3
    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    monitor-exit v0

    return v1

    .line 278
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected getRoutingPort()I
    .registers 3
    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    monitor-exit v0

    return v1

    .line 267
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 122
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result p1

    .line 124
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 128
    :cond_20
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setIsActiveSource(Z)V

    .line 129
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->updateDevicePowerStatus(II)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    .line 133
    :cond_3c
    return v2
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 140
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 141
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 163
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 164
    return v1

    .line 166
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 168
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 169
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_31

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 170
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 173
    :cond_31
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 174
    return v1
.end method

.method protected handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    .line 206
    return-void
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 183
    return v1

    .line 185
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 187
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 188
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_30

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 189
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 192
    :cond_30
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 193
    return v1
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 154
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    .line 155
    const/4 p1, 0x1

    return p1
.end method

.method isRoutingControlFeatureEnabled()Z
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 299
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected isSwitchingToTheSameInput(I)Z
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 305
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected maySendActiveSource(I)V
    .registers 4

    .line 240
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    if-eqz p1, :cond_15

    .line 241
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 242
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 241
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 244
    :cond_15
    return-void
.end method

.method onHotplug(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 81
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 82
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 85
    :cond_15
    if-eqz p2, :cond_1c

    .line 86
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 88
    :cond_1c
    return-void
.end method

.method oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 103
    const-class v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceSource"

    const/4 v3, 0x0

    if-nez v1, :cond_22

    .line 105
    const-string/jumbo v1, "oneTouchPlay already in progress"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 107
    return-void

    .line 109
    :cond_22
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    move-result-object v0

    .line 111
    if-nez v0, :cond_32

    .line 112
    const-string v0, "Cannot initiate oneTouchPlay"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 114
    return-void

    .line 116
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 117
    return-void
.end method

.method protected sendStandby(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 96
    nop

    .line 97
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mAddress:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 98
    return-void
.end method

.method protected setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 221
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 220
    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 222
    return-void
.end method

.method setIsActiveSource(Z)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 227
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    .line 228
    return-void
.end method

.method protected setLocalActivePort(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 291
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected setRoutingPort(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected switchInputOnReceivingNewActivePath(I)V
    .registers 2

    .line 200
    return-void
.end method

.method protected updateDevicePowerStatus(II)V
    .registers 3

    .line 213
    return-void
.end method

.method protected wakeUpIfActiveSource()V
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    if-nez v0, :cond_5

    .line 232
    return-void

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 236
    return-void
.end method
