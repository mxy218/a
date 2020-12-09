.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDeviceAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;
    }
.end annotation


# static fields
.field private static final SHORT_AUDIO_DESCRIPTOR_CONFIG_PATH:Ljava/lang/String; = "/vendor/etc/sadConfig.xml"

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceAudioSystem"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mArcIntentUsed:Z

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPortIdToTvInputs:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
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

.field private mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputsToDeviceInfo:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTvSystemAudioModeSupport:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 4

    .line 114
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 85
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 89
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 93
    nop

    .line 94
    const-string/jumbo v0, "ro.hdmi.property_sytem_audio_device_arc_port"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tvinput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 106
    nop

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 115
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    const-string v1, "hdmi_cec_switch_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mRoutingControlFeatureEnabled:Z

    .line 117
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 118
    const-string v0, "hdmi_system_audio_control_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addOrUpdateTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Z)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    return-void
.end method

.method private addOrUpdateTvInput(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 143
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_6
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 145
    if-nez v1, :cond_14

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_14
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 149
    if-nez v1, :cond_1c

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_1c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private clearDeviceInfoList()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 1270
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1271
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 1272
    goto :goto_d

    .line 1274
    :cond_26
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1275
    goto :goto_d

    .line 1276
    :cond_2b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1277
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 1278
    return-void
.end method

.method private enableAudioReturnChannel(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 825
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 826
    const-string/jumbo v1, "ro.hdmi.property_sytem_audio_device_arc_port"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 825
    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 828
    return-void
.end method

.method private getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B
    .registers 2

    .line 715
    const/4 p1, 0x0

    return-object p1
.end method

.method private getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    .line 669
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 670
    nop

    .line 671
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 672
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    add-int/2addr v3, v1

    .line 674
    goto :goto_f

    .line 675
    :cond_20
    return-object v0
.end method

.method private getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B
    .registers 5

    .line 685
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    .line 707
    return-object v0

    .line 690
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B

    move-result-object p1

    return-object p1

    .line 687
    :cond_c
    return-object v0
.end method

.method private getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B
    .registers 11

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 619
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_34

    aget v4, p2, v3

    .line 620
    invoke-direct {p0, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B

    move-result-object v5

    .line 621
    if-eqz v5, :cond_31

    .line 622
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1b

    .line 624
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 626
    :cond_1b
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    array-length v5, v5

    .line 628
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    .line 626
    const-string v4, "Dropping Short Audio Descriptor with length %d for requested codec %x"

    invoke-static {v4, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 632
    :cond_34
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object p1

    return-object p1
.end method

.method private getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;[I)[B"
        }
    .end annotation

    .line 637
    nop

    .line 638
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 640
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    const-string v2, "VX_AUDIO_DEVICE_IN_HDMI_ARC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 641
    nop

    .line 642
    goto :goto_1f

    .line 644
    :cond_1d
    goto :goto_5

    .line 638
    :cond_1e
    const/4 v0, 0x0

    .line 645
    :goto_1f
    const/4 p1, 0x0

    if-nez v0, :cond_2d

    .line 647
    const-string p2, "HdmiCecLocalDeviceAudioSystem"

    const-string/jumbo v0, "sadConfig.xml does not have required device info for VX_AUDIO_DEVICE_IN_HDMI_ARC"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-array p1, p1, [B

    return-object p1

    .line 651
    :cond_2d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 652
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 654
    iget v4, v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    goto :goto_3e

    .line 656
    :cond_56
    nop

    :goto_57
    array-length v0, p2

    if-ge p1, v0, :cond_7e

    .line 657
    aget v0, p2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 658
    aget v0, p2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 659
    if-eqz v0, :cond_7b

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7b

    .line 660
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_7b
    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    .line 664
    :cond_7e
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object p1

    return-object p1
.end method

.method private getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .registers 11

    .line 720
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 721
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 722
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Error getting system audio device because AudioManager not available."

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    return-object v1

    .line 726
    :cond_1a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 727
    new-array v4, v3, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Found %d audio input devices"

    invoke-static {v5, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    array-length v4, v0

    move v5, v2

    :goto_2f
    if-ge v5, v4, :cond_74

    aget-object v6, v0, v5

    .line 729
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%s at port %s"

    invoke-static {v8, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    new-array v7, v3, [Ljava/lang/Object;

    .line 731
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v8

    sget-object v9, Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;->INSTANCE:Lcom/android/server/hdmi/-$$Lambda$Q3K33XXIADNcvSncyQ2-wHWHi4c;

    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 733
    const-string v9, ", "

    invoke-static {v9}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v2

    .line 730
    const-string v8, "Supported encodings are %s"

    invoke-static {v8, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_71

    .line 736
    return-object v6

    .line 728
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 739
    :cond_74
    return-object v1
.end method

.method private handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1208
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1210
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 1209
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(II)V

    .line 1211
    return-void

    .line 1214
    :cond_22
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 1216
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p1, v0, :cond_4b

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device can\'t assign valid physical addressto devices under it any more. It\'s physical address is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    return-void

    .line 1224
    :cond_4b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1227
    return-void
.end method

.method private handleRoutingChangeAndInformationForSystemAudio()V
    .registers 2

    .line 1202
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1203
    return-void
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 296
    return-void
.end method

.method private launchDeviceDiscovery()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 1250
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1251
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    const-string v1, "Device Discovery Action is in progress. Restarting."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 1254
    :cond_17
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 1263
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1264
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 833
    const-string v1, ""

    const v2, -0x7fffffe0

    invoke-virtual {v0, v2, p1, v1, v1}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method private parseAudioFormatCodes([B)[I
    .registers 7

    .line 744
    array-length v0, p1

    new-array v0, v0, [I

    .line 745
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_19

    .line 746
    aget-byte v3, p1, v2

    .line 747
    nop

    .line 748
    const/4 v4, 0x1

    if-lt v3, v4, :cond_13

    const/16 v4, 0xf

    if-gt v3, v4, :cond_13

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    aput v3, v0, v2

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 750
    :cond_19
    return-object v0
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 255
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 256
    if-eqz v0, :cond_12

    .line 257
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    :cond_12
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 260
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 160
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_6
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private setSystemAudioMode(Z)V
    .registers 7

    .line 888
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 889
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .line 890
    if-eqz p1, :cond_13

    if-ltz v0, :cond_13

    .line 891
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToAudioInput()V

    .line 895
    :cond_13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 896
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 897
    const/4 v2, 0x1

    if-ne v0, p1, :cond_3f

    .line 898
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v3, "ro.hdmi.property_system_audio_mode_muting_enable"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p1, :cond_3f

    .line 901
    :cond_2e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 904
    if-eqz p1, :cond_39

    .line 905
    const/16 v3, 0x64

    goto :goto_3b

    .line 906
    :cond_39
    const/16 v3, -0x64

    :goto_3b
    const/4 v4, 0x0

    .line 902
    invoke-virtual {v0, v1, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 910
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateAudioManagerForSystemAudio(Z)V

    .line 911
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-eq v1, p1, :cond_55

    .line 913
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 914
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 916
    :cond_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_91

    .line 920
    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 921
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 922
    if-eqz p1, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 923
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 924
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_90

    .line 925
    :cond_7b
    if-nez p1, :cond_90

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 926
    const-class p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 927
    new-instance p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 930
    :cond_90
    :goto_90
    return-void

    .line 916
    :catchall_91
    move-exception p1

    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p1
.end method

.method private switchToHomeTvInput()V
    .registers 4

    .line 1167
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34010000

    .line 1169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1173
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1176
    goto :goto_25

    .line 1174
    :catch_1d
    move-exception v0

    .line 1175
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    const-string v2, "Can\'t find activity to switch to HOME"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    :goto_25
    return-void
.end method

.method private switchToTvInput(Ljava/lang/String;)V
    .registers 6

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 1157
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    .line 1158
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1156
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1161
    goto :goto_32

    .line 1159
    :catch_1b
    move-exception v0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find activity to switch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    :goto_32
    return-void
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 943
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

    .line 944
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 279
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_c
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 183
    return-void

    .line 185
    :cond_14
    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 186
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_28

    .line 187
    :cond_1b
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 188
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 191
    :cond_28
    :goto_28
    return-void
.end method

.method protected addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 236
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_14

    .line 238
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 240
    :cond_14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateSafeDeviceInfoList()V

    .line 242
    return-object v0
.end method

.method protected checkSupportAndSetSystemAudioMode(Z)Z
    .registers 5

    .line 862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot turn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    if-eqz p1, :cond_17

    const-string/jumbo p1, "on"

    goto :goto_1a

    :cond_17
    const-string/jumbo p1, "off"

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "system audio mode because the System Audio Control feature is disabled."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 863
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    return v1

    .line 870
    :cond_2d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 870
    const-string v1, "System Audio Mode change[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    if-eqz p1, :cond_4d

    .line 875
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 877
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 878
    return v2
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 322
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 324
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 326
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 972
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 973
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 974
    return-void

    .line 976
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLocalActivePort()I

    move-result v0

    if-ne p1, v0, :cond_1b

    .line 977
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 978
    return-void

    .line 980
    :cond_1b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 983
    const/4 p1, 0x6

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 984
    return-void

    .line 986
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result p2

    if-eqz p2, :cond_3f

    .line 987
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p2

    goto :goto_47

    .line 988
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p2

    .line 989
    :goto_47
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 990
    if-ne p2, v0, :cond_50

    .line 991
    return-void

    .line 993
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 995
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 996
    invoke-static {p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 997
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 998
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1282
    const-string v0, "HdmiCecLocalDeviceAudioSystem:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoutingFeatureEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isRoutingControlFeatureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSystemAudioModeSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArcIntentUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRoutingPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLocalActivePort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLocalActivePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    const-string v1, "mPortIdToTvInputs:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    const-string v1, "mTvInputsToDeviceInfo:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1293
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    const-string v1, "mDeviceInfos:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1295
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1296
    return-void
.end method

.method protected findKeyReceiverAddress()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 371
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return v0

    .line 373
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 273
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p1
.end method

.method protected getPreferredAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 390
    const-string/jumbo v0, "persist.sys.hdmi.addr.audiosystem"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .registers 4
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

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    goto :goto_b

    .line 291
    :cond_1b
    return-object v0
.end method

.method protected handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 506
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    goto :goto_17

    .line 508
    :cond_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 510
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method protected handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 521
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    .line 522
    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 523
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-nez v2, :cond_19

    const-class v2, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 524
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 525
    move v0, v1

    .line 527
    :cond_19
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 529
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 528
    invoke-static {v3, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 527
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 530
    return v1
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 479
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "HdmiCecLocalDeviceAudioSystemStub handleInitiateArc"

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const/4 p1, 0x1

    return p1
.end method

.method protected handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 488
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "HdmiCecLocalDeviceAudioSystemStub handleReportArcInitiate"

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const/4 p1, 0x1

    return p1
.end method

.method protected handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 497
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "HdmiCecLocalDeviceAudioSystemStub handleReportArcTermination"

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    const/4 p1, 0x1

    return p1
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 11
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 406
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v3

    .line 407
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 408
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x2

    aget-byte v5, v1, v2

    .line 411
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceAudioSystem"

    const/4 v8, 0x1

    if-eqz v1, :cond_36

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v8

    .line 419
    :cond_36
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 420
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    if-eq p1, v3, :cond_43

    goto :goto_49

    .line 431
    :cond_43
    const-string p1, "Device info exists. Not updating on Physical Address."

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v8

    .line 421
    :cond_49
    :goto_49
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 422
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v4

    const v6, 0xffffff

    .line 423
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 426
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 427
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 426
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 428
    return v8
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 437
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 438
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateDevicePowerStatus(II)V

    .line 439
    const/4 p1, 0x1

    return p1
.end method

.method protected handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 536
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 537
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x1

    const-string/jumbo v2, "persist.sys.hdmi.property_arc_support"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 539
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_36

    .line 540
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 541
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "AVR device is not directly connected with TV"

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_36

    .line 544
    :cond_2e
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 546
    :goto_36
    return v1
.end method

.method protected handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 553
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.hdmi.property_arc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 554
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_34

    .line 555
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 556
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ARC is not established between TV and AVR device"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_34

    .line 559
    :cond_27
    const-class p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 560
    new-instance p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 562
    :goto_34
    return v0
.end method

.method protected handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 567
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 568
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HdmiCecLocalDeviceAudioSystemStub handleRequestShortAudioDescriptor"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 570
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 571
    return v2

    .line 573
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-nez v1, :cond_27

    .line 574
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 575
    return v2

    .line 578
    :cond_27
    const/4 v1, 0x0

    .line 579
    new-instance v3, Ljava/io/File;

    const-string v4, "/vendor/etc/sadConfig.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 582
    :try_start_35
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 583
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 584
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_6d

    .line 587
    :catch_42
    move-exception v4

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 585
    :catch_58
    move-exception v4

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    :cond_6d
    :goto_6d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->parseAudioFormatCodes([B)[I

    move-result-object v0

    .line 594
    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_82

    .line 595
    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B

    move-result-object v0

    goto :goto_93

    .line 597
    :cond_82
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 598
    if-nez v1, :cond_8f

    .line 599
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 600
    return v2

    .line 603
    :cond_8f
    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B

    move-result-object v0

    .line 606
    :goto_93
    array-length v1, v0

    if-nez v1, :cond_9d

    .line 607
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_ac

    .line 609
    :cond_9d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 611
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 610
    invoke-static {v3, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 609
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 613
    :goto_ac
    return v2
.end method

.method protected handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4

    .line 1181
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    .line 1183
    if-lez p1, :cond_9

    .line 1184
    return-void

    .line 1188
    :cond_9
    if-gez p1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1189
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSystemAudio()V

    .line 1190
    return-void

    .line 1194
    :cond_15
    if-nez p1, :cond_1a

    .line 1195
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1197
    :cond_1a
    return-void
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 12
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 445
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 449
    const/4 v1, 0x1

    const-string v2, "HdmiCecLocalDeviceAudioSystem"

    if-nez v0, :cond_22

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No source device info for <Set Osd Name>."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v1

    .line 454
    :cond_22
    :try_start_22
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-direct {v9, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_2d} :catch_8b

    .line 458
    nop

    .line 460
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v1

    .line 465
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating device OSD name from "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    .line 469
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v6

    .line 470
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 471
    return v1

    .line 455
    :catch_8b
    move-exception v0

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid <Set Osd Name> request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v1
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 788
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 789
    nop

    .line 790
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 791
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 793
    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1053
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot turn onsystem audio mode because the System Audio Control feature is disabled."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1057
    return-void

    .line 1060
    :cond_15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 1064
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 1066
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v2, 0xf

    .line 1068
    invoke-static {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 1067
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1070
    return-void

    .line 1074
    :cond_3b
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    .line 1086
    return-void
.end method

.method protected handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 756
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 757
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 761
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 762
    if-eqz v0, :cond_1d

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 764
    return v1

    .line 770
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 774
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 775
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 776
    return v1

    .line 779
    :cond_2a
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v3, 0xf

    .line 780
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 779
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 782
    return v1
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 800
    nop

    .line 801
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 802
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 804
    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method protected isArcEnabled()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    monitor-exit v0

    return v1

    .line 1096
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected isDirectConnectToTv()Z
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 938
    const v1, 0xf000

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected isSystemAudioActivated()Z
    .registers 2

    .line 1007
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    return v0
.end method

.method isSystemAudioControlFeatureEnabled()Z
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 1003
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected onAddressAllocated(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 346
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_1c

    .line 347
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    .line 348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v0

    const/16 v1, 0xf

    .line 347
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 350
    :cond_1c
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 352
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDeviceType:I

    .line 351
    invoke-static {p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 350
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 353
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 354
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 355
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 356
    const/4 p1, 0x0

    .line 357
    const-string/jumbo p2, "persist.sys.hdmi.system_audio_control_on_power_on"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 360
    const/4 p2, 0x1

    .line 361
    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->systemAudioControlOnPowerOn(IZ)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->clearDeviceInfoList()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->launchDeviceDiscovery()V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->startQueuedActions()V

    .line 366
    return-void
.end method

.method onHotplug(IZ)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 302
    if-eqz p2, :cond_a

    .line 303
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 305
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 306
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    goto :goto_49

    .line 307
    :cond_1d
    if-nez p2, :cond_49

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 308
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 309
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 310
    if-nez p1, :cond_42

    .line 311
    return-void

    .line 315
    :cond_42
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeCecDevice(I)V

    .line 317
    :cond_49
    :goto_49
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 332
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 334
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 335
    :try_start_9
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    .line 337
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "true"

    goto :goto_1a

    :cond_18
    const-string v1, "false"

    .line 335
    :goto_1a
    invoke-virtual {p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_22

    .line 339
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode()V

    .line 340
    return-void

    .line 338
    :catchall_22
    move-exception p2

    :try_start_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p2
.end method

.method onSystemAduioControlFeatureSupportChanged(Z)V
    .registers 2

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioControlFeatureEnabled(Z)V

    .line 948
    if-eqz p1, :cond_d

    .line 949
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 951
    :cond_d
    return-void
.end method

.method queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1042
    new-instance v0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_14

    .line 1044
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 1046
    :goto_14
    return-void
.end method

.method final removeCecDevice(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 201
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 204
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 205
    return-void
.end method

.method reportAudioStatus(I)V
    .registers 10

    .line 837
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 839
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 840
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 841
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 842
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v4

    .line 843
    invoke-static {v0, v3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v5

    .line 844
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 845
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v6, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    .line 844
    const-string v0, "Reporting volume %d (%d-%d) as CEC volume %d"

    invoke-static {v0, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    .line 848
    invoke-static {v1, p1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 847
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 850
    return-void
.end method

.method protected routeToInputFromPortId(I)V
    .registers 3

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isRoutingControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1116
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Routing Control Feature is not enabled."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    return-void

    .line 1119
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    if-eqz v0, :cond_16

    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToTvInputFromPortId(I)V

    .line 1124
    :cond_16
    return-void
.end method

.method protected routeToTvInputFromPortId(I)V
    .registers 5

    .line 1127
    const/4 v0, 0x0

    if-ltz p1, :cond_4d

    const/16 v1, 0x15

    if-lt p1, v1, :cond_8

    goto :goto_4d

    .line 1132
    :cond_8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 1133
    if-nez p1, :cond_1b

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1134
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToHomeTvInput()V

    goto :goto_3e

    .line 1135
    :cond_1b
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2d

    .line 1136
    const-string/jumbo v0, "ro.hdmi.property_sytem_audio_device_arc_port"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 1138
    return-void

    .line 1140
    :cond_2d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1141
    if-eqz v1, :cond_45

    .line 1142
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1149
    :goto_3e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setLocalActivePort(I)V

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setRoutingPort(I)V

    .line 1151
    return-void

    .line 1144
    :cond_45
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Port number does not match any Tv Input."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    return-void

    .line 1128
    :cond_4d
    :goto_4d
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Invalid port number for Tv Input switching."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method setArcStatus(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 812
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

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

    .line 814
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->enableAudioReturnChannel(Z)V

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->notifyArcStatusToAudioService(Z)V

    .line 818
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 819
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 398
    const-string/jumbo v1, "persist.sys.hdmi.addr.audiosystem"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method setRoutingControlFeatureEnables(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 964
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mRoutingControlFeatureEnabled:Z

    .line 966
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method setSystemAudioControlFeatureEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 956
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 958
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method setTvSystemAudioModeSupport(Z)V
    .registers 2

    .line 1089
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 1090
    return-void
.end method

.method protected switchInputOnReceivingNewActivePath(I)V
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_14

    if-gez p1, :cond_14

    .line 1106
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    goto :goto_1d

    .line 1107
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mIsSwitchDevice:Z

    if-eqz v0, :cond_1d

    if-ltz p1, :cond_1d

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1112
    :cond_1d
    :goto_1d
    return-void
.end method

.method protected switchToAudioInput()V
    .registers 1

    .line 934
    return-void
.end method

.method protected systemAudioControlOnPowerOn(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 379
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    if-eqz p2, :cond_15

    .line 381
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 382
    :cond_d
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 384
    :cond_15
    return-void
.end method

.method protected terminateSystemAudioMode()V
    .registers 5

    .line 1012
    const-class v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeAction(Ljava/lang/Class;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1014
    return-void

    .line 1017
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1019
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    const/16 v3, 0xf

    .line 1020
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1019
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1023
    :cond_20
    return-void
.end method

.method final updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->assertRunOnServiceThread()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 217
    if-nez v0, :cond_e

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_18

    .line 219
    :cond_e
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 220
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 222
    :cond_18
    :goto_18
    return-void
.end method

.method protected updateDevicePowerStatus(II)V
    .registers 4

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1231
    if-nez v0, :cond_1d

    .line 1232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not update power status of non-existing device:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void

    .line 1236
    :cond_1d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    if-ne p1, p2, :cond_24

    .line 1237
    return-void

    .line 1240
    :cond_24
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1244
    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1245
    return-void
.end method
