.class final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field private mAutoDeviceOff:Z

.field private mAutoWakeup:Z

.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeviceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private mSkipRoutingControl:Z

.field private final mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

.field private mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 5

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 73
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 78
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 95
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 99
    nop

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 102
    nop

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    .line 133
    new-instance v0, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 138
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 186
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 187
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x1

    const-string v2, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 189
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v2, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 190
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 191
    const-string v2, "hdmi_system_audio_control_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 192
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1227
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_14

    .line 1229
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1231
    :cond_14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1232
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1233
    return-object v0
.end method

.method private addTvInput(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 166
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method private canStartArcUpdateAction(IZ)Z
    .registers 6

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1089
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 1090
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_3c

    .line 1091
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1092
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1093
    const/4 p1, 0x1

    if-eqz p2, :cond_3b

    .line 1094
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    :cond_39
    move p1, v1

    :goto_3a
    return p1

    .line 1096
    :cond_3b
    return p1

    .line 1099
    :cond_3c
    return v1
.end method

.method private checkRecordSource([B)Z
    .registers 2

    .line 1745
    if-eqz p1, :cond_a

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private checkRecorder(I)Z
    .registers 4

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1739
    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1740
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result p1

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1739
    :goto_f
    return v1
.end method

.method private checkTimerRecordingSource(I[B)Z
    .registers 3

    .line 1780
    if-eqz p2, :cond_a

    .line 1781
    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 1780
    :goto_b
    return p1
.end method

.method private clearDeviceInfoList()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 793
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 794
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 795
    goto :goto_9

    .line 796
    :cond_1a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 797
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 798
    return-void
.end method

.method private disableArcIfExist()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1639
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1640
    if-nez v0, :cond_a

    .line 1641
    return-void

    .line 1645
    :cond_a
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1646
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1647
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1649
    :cond_29
    return-void
.end method

.method private disableSystemAudioIfExist()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1625
    return-void

    .line 1629
    :cond_a
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1630
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1631
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1632
    const-class v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1633
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1634
    return-void
.end method

.method private getInputDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1308
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1309
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1310
    goto :goto_30

    .line 1312
    :cond_21
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1316
    :cond_33
    return-object v0
.end method

.method private handleNewDeviceAtTheTailOfActivePath(I)Z
    .registers 5

    .line 625
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 626
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 628
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 629
    const/4 p1, 0x1

    return p1

    .line 631
    :cond_22
    return v0
.end method

.method private handleSelectInternalSource()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 306
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v0, v1, :cond_39

    .line 307
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(II)V

    .line 308
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v0, :cond_28

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 310
    return-void

    .line 312
    :cond_28
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 313
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 312
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 316
    :cond_39
    return-void
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 3

    .line 1323
    nop

    .line 1324
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result p1

    .line 1323
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private initLocalDeviceAddresses()Ljava/util/List;
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 224
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    goto :goto_12

    .line 226
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 4

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1351
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1353
    :cond_b
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1328
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1329
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isParentPath(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1330
    const/4 p0, 0x1

    return p0

    .line 1332
    :cond_1c
    goto :goto_4

    .line 1333
    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private isDirectConnectAddress(I)Z
    .registers 3

    .line 982
    const v0, 0xf000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private isLocalDeviceAddress(I)Z
    .registers 3

    .line 1356
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 1207
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 1209
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1210
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_25

    .line 1211
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 1207
    :goto_26
    return p1
.end method

.method private static isParentPath(II)Z
    .registers 5

    .line 1339
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1d

    .line 1340
    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 1341
    if-eqz v2, :cond_1a

    .line 1342
    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 1343
    if-nez v2, :cond_19

    add-int/lit8 v1, v1, 0x4

    shr-int/2addr p1, v1

    shr-int/2addr p0, v1

    if-ne p1, p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 1339
    :cond_1a
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 1346
    :cond_1d
    return v0
.end method

.method static isTailOfActivePath(II)Z
    .registers 6

    .line 644
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 645
    return v0

    .line 647
    :cond_4
    const/16 v1, 0xc

    :goto_6
    if-ltz v1, :cond_1a

    .line 648
    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 649
    if-nez v2, :cond_10

    .line 650
    const/4 p0, 0x1

    return p0

    .line 652
    :cond_10
    shr-int v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 653
    if-eq v3, v2, :cond_17

    .line 654
    return v0

    .line 647
    :cond_17
    add-int/lit8 v1, v1, -0x4

    goto :goto_6

    .line 658
    :cond_1a
    return v0
.end method

.method private launchDeviceDiscovery()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 746
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 747
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 777
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .registers 5

    .line 908
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 910
    nop

    .line 908
    const-string v1, ""

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2, p1, v1, v1}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method private removeCecSwitches(I)V
    .registers 4

    .line 1567
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1568
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1569
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1570
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->pathToPortId(I)I

    move-result v1

    if-ne v1, p1, :cond_1f

    .line 1571
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1573
    :cond_1f
    goto :goto_6

    .line 1574
    :cond_20
    return-void
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1249
    if-eqz v0, :cond_12

    .line 1250
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1252
    :cond_12
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1253
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 172
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private resetSelectRequestBuffer()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 239
    sget-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 240
    return-void
.end method

.method private sendClearTimerMessage(II[B)V
    .registers 5

    .line 1812
    nop

    .line 1813
    const/4 v0, 0x1

    if-eq p2, v0, :cond_34

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_26

    .line 1827
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid source type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HdmiCecLocalDeviceTv"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/16 p2, 0xa1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1830
    return-void

    .line 1823
    :cond_26
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 1825
    goto :goto_3b

    .line 1819
    :cond_2d
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 1821
    goto :goto_3b

    .line 1815
    :cond_34
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 1817
    nop

    .line 1833
    :goto_3b
    iget-object p3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    invoke-virtual {p3, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 1842
    return-void
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .registers 5

    .line 840
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 841
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1291
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 1292
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getInputDevices()Ljava/util/List;

    move-result-object v1

    .line 1293
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1294
    :try_start_10
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 1295
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    .line 1296
    monitor-exit v2

    .line 1297
    return-void

    .line 1296
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1426
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1428
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-ne v1, v2, :cond_10

    .line 1430
    return-void

    .line 1432
    :cond_10
    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 1433
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_24

    .line 1434
    :cond_17
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1435
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1436
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1438
    :cond_24
    :goto_24
    return-void
.end method

.method announceClearTimerRecordingResult(II)V
    .registers 4

    .line 1203
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    .line 1204
    return-void
.end method

.method announceOneTouchRecordResult(II)V
    .registers 4

    .line 1195
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    .line 1196
    return-void
.end method

.method announceTimerRecordingResult(II)V
    .registers 4

    .line 1199
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    .line 1200
    return-void
.end method

.method broadcastMenuLanguage(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 534
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 536
    if-eqz p1, :cond_12

    .line 537
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 538
    const/4 p1, 0x1

    return p1

    .line 540
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method changeArcFeatureEnabled(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 929
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 930
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_c

    .line 931
    return-void

    .line 933
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 934
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 935
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    if-eq v0, p1, :cond_1e

    goto :goto_34

    .line 938
    :cond_1e
    if-eqz p2, :cond_29

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-nez p1, :cond_29

    .line 939
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_33

    .line 940
    :cond_29
    if-nez p2, :cond_33

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-eqz p1, :cond_33

    .line 941
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 943
    :cond_33
    :goto_33
    return-void

    .line 936
    :cond_34
    :goto_34
    return-void
.end method

.method changeMute(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1039
    return-void

    .line 1041
    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[A]:Change mute:%b"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    if-ne v1, p1, :cond_29

    .line 1044
    const-string p1, "No need to change mute."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    monitor-exit v0

    return-void

    .line 1047
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_4d

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1049
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "[A]:System audio is not activated."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    return-void

    .line 1054
    :cond_38
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1056
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result p1

    .line 1055
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendUserControlPressedAndReleased(II)V

    .line 1057
    return-void

    .line 1047
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 803
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 804
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 809
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 810
    if-nez v0, :cond_23

    .line 811
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 812
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 813
    return-void

    .line 816
    :cond_23
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 817
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 816
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 818
    return-void

    .line 805
    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 806
    const/4 p1, 0x6

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 807
    return-void
.end method

.method changeVolume(III)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1006
    return-void

    .line 1008
    :cond_a
    if-eqz p2, :cond_61

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_61

    .line 1012
    :cond_13
    add-int/2addr p1, p2

    .line 1013
    invoke-static {p1, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result p1

    .line 1014
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_1b
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2d

    .line 1019
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 1020
    invoke-static {p2, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result p2

    .line 1019
    invoke-virtual {p1, v2, p2}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1021
    monitor-exit v0

    return-void

    .line 1023
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_5e

    .line 1025
    const-class p1, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1026
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_50

    .line 1027
    new-instance p1, Lcom/android/server/hdmi/VolumeControlAction;

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p3

    if-lez p2, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    invoke-direct {p1, p0, p3, v0}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_5d

    .line 1030
    :cond_50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/VolumeControlAction;

    if-lez p2, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    .line 1032
    :goto_5d
    return-void

    .line 1023
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1

    .line 1009
    :cond_61
    :goto_61
    return-void
.end method

.method clearTimerRecording(II[B)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1787
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_18

    .line 1788
    const-string p2, "Can not start one touch record. CEC control is disabled."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const/16 p2, 0xa2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1790
    return-void

    .line 1793
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid recorder address:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/16 p2, 0xa0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1797
    return-void

    .line 1800
    :cond_38
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1801
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid record source."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/16 p2, 0xa1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1804
    return-void

    .line 1807
    :cond_5c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V

    .line 1808
    return-void
.end method

.method deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 272
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 273
    if-nez p1, :cond_12

    .line 274
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 275
    return-void

    .line 277
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    .line 280
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_2f

    .line 282
    invoke-virtual {p0, p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 283
    return-void

    .line 285
    :cond_2f
    if-nez v0, :cond_4a

    .line 286
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleSelectInternalSource()V

    .line 288
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(II)V

    .line 289
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 290
    invoke-virtual {p0, p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 291
    return-void

    .line 293
    :cond_4a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 295
    const/4 p1, 0x6

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 296
    return-void

    .line 298
    :cond_5a
    const-class v0, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 299
    new-instance v0, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DeviceSelectAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 300
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1599
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 1604
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1605
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1606
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1608
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1609
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1611
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableSystemAudioIfExist()V

    .line 1612
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArcIfExist()V

    .line 1614
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 1615
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 1617
    const p1, 0xffff

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1618
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkIfPendingActionsCleared()V

    .line 1619
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 256
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isWakeUpMessageReceived()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 257
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 258
    const/4 p1, 0x1

    return p1

    .line 260
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1
.end method

.method displayOsd(I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1676
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    .line 1677
    return-void
.end method

.method displayOsd(II)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1682
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    .line 1683
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 389
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_10

    .line 390
    invoke-virtual {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 391
    return-void

    .line 393
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1b

    .line 394
    invoke-virtual {p0, p2, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 395
    return-void

    .line 397
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 400
    invoke-virtual {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 401
    return-void

    .line 403
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 404
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    .line 405
    :goto_4b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 406
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v1, :cond_55

    .line 407
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 408
    return-void

    .line 410
    :cond_55
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 411
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 412
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1898
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArcFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemAudioMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoDeviceOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoWakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipRoutingControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrevPortId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    const-string v0, "CEC devices:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1909
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1910
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1911
    goto :goto_c1

    .line 1912
    :cond_d1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1913
    return-void
.end method

.method enableAudioReturnChannel(Z)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 893
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 894
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_12

    .line 896
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 898
    :cond_12
    return-void
.end method

.method protected findKeyReceiverAddress()I
    .registers 2

    .line 437
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 438
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return v0

    .line 440
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_20

    .line 442
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0

    .line 444
    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method getAutoWakeup()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1592
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    return v0
.end method

.method getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1362
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1377
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p1
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1503
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 1504
    return-object v1

    .line 1506
    :cond_1f
    goto :goto_c

    .line 1507
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1266
    if-eqz p1, :cond_c

    .line 1267
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1269
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 1271
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1272
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1273
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1276
    :cond_32
    return-object p1
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 432
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method protected getPreferredAddress()I
    .registers 2

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method getPrevPortId()I
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    monitor-exit v0

    return v1

    .line 350
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1385
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6

    .line 1396
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1397
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1398
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 1399
    monitor-exit v0

    return-object v2

    .line 1401
    :cond_23
    goto :goto_9

    .line 1402
    :cond_24
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 1403
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1410
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1411
    goto :goto_b

    .line 1413
    :cond_22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    goto :goto_b

    .line 1415
    :cond_26
    return-object v0
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6

    .line 1519
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1521
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 1522
    monitor-exit v0

    return-object v2

    .line 1524
    :cond_1d
    goto :goto_9

    .line 1525
    :cond_1e
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 1526
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1285
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    return-object v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 450
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 451
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 452
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 454
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_30

    .line 455
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 456
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Device info %X not found; buffering the command"

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_6d

    .line 459
    :cond_30
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    move-result v5

    if-nez v5, :cond_59

    .line 460
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_42

    goto :goto_59

    .line 465
    :cond_42
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Input not ready for device: %X; buffering the command"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_6d

    .line 461
    :cond_59
    :goto_59
    invoke-virtual {p0, v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 462
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    .line 463
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    move-result-object v0

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 464
    nop

    .line 468
    :cond_6d
    :goto_6d
    return v3
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 525
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to respond to <Get Menu Language>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiCecLocalDeviceTv"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 478
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    .line 479
    return v2

    .line 481
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 482
    return v2

    .line 484
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPrevPortId()I

    move-result v0

    .line 485
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 488
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 489
    if-nez p1, :cond_2a

    .line 490
    return v2

    .line 492
    :cond_2a
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    if-ne p1, v0, :cond_37

    .line 493
    return v2

    .line 497
    :cond_37
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 499
    goto :goto_53

    .line 502
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 503
    const p1, 0xffff

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 504
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 506
    :goto_53
    return v2
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1066
    if-nez v0, :cond_1a

    .line 1068
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1069
    return v1

    .line 1071
    :cond_1a
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1072
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1073
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    .line 1075
    :cond_2d
    return v1

    .line 1080
    :cond_2e
    const-class v0, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1081
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1082
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1083
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1084
    return v1
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    .line 1865
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    .line 588
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1165
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1168
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 1169
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-eq v0, v1, :cond_27

    .line 1170
    nop

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/16 v1, 0x30

    .line 1170
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1174
    :cond_27
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1

    .line 1177
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 1178
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    move-result-object v1

    .line 1179
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    move-result v0

    .line 1180
    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    .line 1181
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1183
    :cond_42
    const/4 p1, 0x1

    return p1
.end method

.method handleRemoveActiveRoutingPath(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1459
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1462
    :cond_20
    return-void
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 682
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 683
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    .line 684
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 685
    const/4 p1, 0x1

    return p1
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 13
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 547
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 548
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v8

    .line 549
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x2

    aget-byte v9, v1, v2

    .line 551
    invoke-virtual {p0, v8, v9, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1e

    return v10

    .line 554
    :cond_1e
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiCecLocalDeviceTv"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v10

    .line 559
    :cond_3d
    invoke-virtual {p0, v8, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result p1

    if-nez p1, :cond_46

    .line 560
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 565
    :cond_46
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v4

    const v6, 0xffffff

    .line 566
    invoke-static {v8}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, v8

    move v3, v0

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 568
    invoke-static {v8, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p0, p1, v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 569
    return v10
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 574
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 575
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 576
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 514
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne p1, v0, :cond_1c

    .line 515
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    .line 516
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 515
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 518
    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 664
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 666
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 667
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    .line 669
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 670
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 671
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p1

    .line 672
    new-instance v0, Lcom/android/server/hdmi/RoutingControlAction;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 674
    :cond_30
    return v1
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 12
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 717
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 720
    const-string v1, "HdmiCecLocalDeviceTv"

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No source device info for <Set Osd Name>."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return v2

    .line 724
    :cond_22
    nop

    .line 726
    :try_start_23
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-direct {v9, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_2e} :catch_6c

    .line 730
    nop

    .line 732
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v2

    .line 737
    :cond_4e
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    .line 738
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v6

    .line 739
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 740
    return v2

    .line 727
    :catch_6c
    move-exception v0

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid <Set Osd Name> request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1125
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_38

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1129
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_37

    .line 1131
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid <Set System Audio Mode> message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1134
    :goto_37
    return v4

    .line 1135
    :cond_38
    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1136
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v1, "Ignoring <Set System Audio Mode> message because the System Audio Control feature is disabled: %s"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1139
    return v4

    .line 1141
    :cond_4f
    const-class v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1142
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 1143
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1145
    return v4
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1152
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid <System Audio Mode Status> message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    return v1

    .line 1157
    :cond_22
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 1158
    return v1
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1107
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 1108
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 1109
    return v1

    .line 1114
    :cond_11
    const-class v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1115
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1116
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1117
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1118
    return v1
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 700
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    if-eqz p1, :cond_14

    .line 701
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 703
    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1189
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1190
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1191
    const/4 p1, 0x1

    return p1
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    .line 582
    const/4 p1, 0x1

    return p1
.end method

.method hasSystemAudioDevice()Z
    .registers 2

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isArcEstablished()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 918
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 919
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 920
    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 921
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    return v0

    .line 920
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 924
    :cond_1e
    return v1
.end method

.method isArcFeatureEnabled(I)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 948
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method isConnected(I)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 902
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 903
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    move-result p1

    return p1
.end method

.method isInDeviceList(II)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1541
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 1542
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1543
    return v0

    .line 1545
    :cond_b
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    if-ne p1, p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method protected isInputReady(I)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 179
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isPowerStandbyOrTransient()Z
    .registers 2

    .line 1670
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    return v0
.end method

.method isProhibitMode()Z
    .registers 2

    .line 1666
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    return v0
.end method

.method isSystemAudioActivated()Z
    .registers 2

    .line 845
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 846
    const/4 v0, 0x0

    return v0

    .line 848
    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    return v0
.end method

.method isSystemAudioControlFeatureEnabled()Z
    .registers 3

    .line 863
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 865
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method launchRoutingControl(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 1475
    if-nez p1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1476
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1479
    goto :goto_48

    .line 1481
    :cond_28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1482
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1483
    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 v1, 0x82

    .line 1484
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result p1

    if-nez p1, :cond_48

    .line 1485
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1489
    :cond_48
    :goto_48
    return-void
.end method

.method protected onAddressAllocated(II)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 199
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object p1

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 201
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 202
    goto :goto_d

    .line 203
    :cond_27
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 204
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 205
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceType:I

    .line 204
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 206
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 207
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v1

    .line 206
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 208
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 210
    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_6d

    move p1, v1

    goto :goto_6e

    :cond_6d
    move p1, v0

    :goto_6e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 211
    if-eqz p2, :cond_75

    if-eq p2, v1, :cond_75

    move v0, v1

    :cond_75
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->initLocalDeviceAddresses()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    .line 214
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    .line 215
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V

    .line 216
    return-void
.end method

.method onHotplug(IZ)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1553
    if-nez p2, :cond_8

    .line 1554
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecSwitches(I)V

    .line 1557
    :cond_8
    const-class p1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 1558
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1e

    .line 1562
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    .line 1564
    :cond_1e
    return-void
.end method

.method onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 782
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 783
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-class p1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 785
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 787
    :cond_2f
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1656
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1657
    return-void

    .line 1659
    :cond_c
    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    if-eqz p1, :cond_1f

    .line 1660
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1663
    :cond_1f
    return-void
.end method

.method processAllDelayedMessages()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1881
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    .line 1882
    return-void
.end method

.method processDelayedActiveSource(I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1892
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1893
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 1894
    return-void
.end method

.method processDelayedMessages(I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1887
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    .line 1888
    return-void
.end method

.method final removeCecDevice(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1448
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 1451
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1452
    return-void
.end method

.method protected sendStandby(I)V
    .registers 4

    .line 1870
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1871
    if-nez p1, :cond_b

    .line 1872
    return-void

    .line 1874
    :cond_b
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 1875
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1876
    return-void
.end method

.method setArcStatus(Z)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 877
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Set Arc Status[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 882
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Z)V

    .line 884
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 885
    return v0
.end method

.method setAudioStatus(ZI)V
    .registers 6

    .line 986
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 987
    return-void

    .line 989
    :cond_7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_a
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 991
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 992
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 994
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 995
    invoke-static {p2, v1}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v1

    .line 994
    invoke-virtual {v2, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 996
    const/4 v1, 0x2

    .line 997
    if-eqz p1, :cond_27

    const/16 p2, 0x65

    .line 996
    :cond_27
    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(II)V

    .line 998
    monitor-exit v0

    .line 999
    return-void

    .line 998
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1580
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 1581
    return-void
.end method

.method setAutoWakeup(Z)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1586
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 1587
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 3

    .line 249
    const-string p1, "HdmiCecLocalDeviceTv"

    const-string v0, "Preferred addres will not be stored for TV"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method setPrevPortId(I)V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 233
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 234
    return-void
.end method

.method setSystemAudioControlFeatureEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 853
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 854
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 856
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    .line 857
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 860
    :cond_13
    return-void

    .line 856
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method setSystemAudioMode(Z)V
    .registers 5

    .line 822
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 823
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Cannot turn on system audio mode because the System Audio Control feature is disabled."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    return-void

    .line 827
    :cond_11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 828
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 827
    const-string v1, "System Audio Mode change[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateAudioManagerForSystemAudio(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_32
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v1

    if-eq v1, p1, :cond_44

    .line 832
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 833
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 835
    :cond_44
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 836
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method startArcAction(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 955
    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_11

    .line 956
    const-string p1, "Failed to start arc action; No AVR device."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void

    .line 959
    :cond_11
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v2

    if-nez v2, :cond_31

    .line 960
    const-string v2, "Failed to start arc action; ARC configuration check failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz p1, :cond_30

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result p1

    if-nez p1, :cond_30

    .line 962
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    .line 964
    :cond_30
    return-void

    .line 968
    :cond_31
    if-eqz p1, :cond_4d

    .line 969
    const-class p1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 970
    const-class p1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 971
    new-instance p1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_66

    .line 974
    :cond_4d
    const-class p1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 975
    const-class p1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 976
    new-instance p1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 979
    :cond_66
    :goto_66
    return-void
.end method

.method startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .registers 5

    .line 605
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 614
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 615
    return-void

    .line 617
    :cond_1d
    goto :goto_a

    .line 619
    :cond_1e
    new-instance v0, Lcom/android/server/hdmi/NewDeviceAction;

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 621
    return-void
.end method

.method startOneTouchRecord(I[B)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1689
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_19

    .line 1690
    const-string p2, "Can not start one touch record. CEC control is disabled."

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/16 p2, 0x33

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1692
    return v1

    .line 1695
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid recorder address:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/16 p2, 0x31

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1699
    return v1

    .line 1702
    :cond_39
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecordSource([B)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid record source."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const/16 p2, 0x32

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1706
    const/4 p1, 0x2

    return p1

    .line 1709
    :cond_5e
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start new [One Touch Record]-Target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", recordSource:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1710
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const/4 p1, -0x1

    return p1
.end method

.method startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 418
    if-ne p1, p2, :cond_6

    .line 419
    return-void

    .line 421
    :cond_6
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    .line 422
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 423
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 424
    const-class p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 425
    new-instance p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 427
    return-void
.end method

.method startTimerRecording(II[B)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1751
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_17

    .line 1752
    const-string p2, "Can not start one touch record. CEC control is disabled."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1755
    return-void

    .line 1758
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid recorder address:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1762
    return-void

    .line 1765
    :cond_36
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1766
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid record source."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1770
    return-void

    .line 1773
    :cond_59
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Timer Recording]-Target:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", SourceType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RecordSource:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1775
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    return-void
.end method

.method stopOneTouchRecord(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1718
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_18

    .line 1719
    const-string v0, "Can not stop one touch record. CEC control is disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1721
    return-void

    .line 1724
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/16 v0, 0x31

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1728
    return-void

    .line 1732
    :cond_38
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1733
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop [One Touch Record]-Target:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    return-void
.end method

.method updateActiveInput(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 370
    if-eqz p2, :cond_2e

    .line 371
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p2

    .line 372
    iget p2, p2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    .line 373
    if-nez p2, :cond_29

    .line 374
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    .line 375
    if-nez p2, :cond_29

    .line 378
    new-instance p2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    .line 381
    :cond_29
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 383
    :cond_2e
    return-void
.end method

.method updateActiveSource(II)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 321
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 322
    return-void
.end method

.method updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 329
    return-void

    .line 331
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 332
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v0, v1, :cond_32

    .line 334
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    if-ne p1, v0, :cond_32

    .line 335
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 342
    :cond_32
    return-void
.end method

.method updateCecSwitchInfo(III)Z
    .registers 5

    .line 592
    const/16 v0, 0xf

    if-ne p1, v0, :cond_15

    const/4 p1, 0x6

    if-ne p2, p1, :cond_15

    .line 594
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 596
    const/4 p1, 0x1

    return p1

    .line 598
    :cond_15
    const/4 p1, 0x5

    if-ne p2, p1, :cond_21

    .line 599
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method updateDevicePowerStatus(II)V
    .registers 4

    .line 1845
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1846
    if-nez v0, :cond_1d

    .line 1847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not update power status of non-existing device:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiCecLocalDeviceTv"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    return-void

    .line 1851
    :cond_1d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    if-ne p1, p2, :cond_24

    .line 1852
    return-void

    .line 1855
    :cond_24
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 1857
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1859
    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1860
    return-void
.end method
