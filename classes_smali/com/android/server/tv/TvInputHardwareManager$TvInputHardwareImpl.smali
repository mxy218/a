.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 6

    .line 779
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 735
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 737
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 763
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 764
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 770
    const/high16 v2, -0x40800000  # -1.0f

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 771
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 773
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 775
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 776
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 777
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 780
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 781
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 782
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_60

    .line 783
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 784
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 786
    :cond_60
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    .line 732
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .registers 1

    .line 732
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    .line 732
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 2

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result p0

    return p0
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 7

    .line 804
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 805
    return-object v0

    .line 807
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_15

    .line 809
    return-object v0

    .line 811
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 812
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-ne v3, p1, :cond_36

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 813
    return-object v2

    .line 815
    :cond_36
    goto :goto_19

    .line 816
    :cond_37
    return-object v0
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 789
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 792
    return-void

    .line 794
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 795
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 796
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_42

    .line 797
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-nez v3, :cond_42

    .line 798
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_42
    goto :goto_23

    .line 801
    :cond_43
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .registers 3

    .line 1088
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7

    .line 1023
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1025
    monitor-exit v0

    return v2

    .line 1027
    :cond_a
    if-eqz p1, :cond_2d

    if-nez p2, :cond_f

    goto :goto_2d

    .line 1030
    :cond_f
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_18

    .line 1031
    monitor-exit v0

    return v2

    .line 1034
    :cond_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p1

    .line 1035
    if-nez p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1028
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    .line 1036
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 6

    .line 1040
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1042
    monitor-exit v0

    return v2

    .line 1044
    :cond_a
    if-nez p1, :cond_e

    .line 1045
    monitor-exit v0

    return v2

    .line 1048
    :cond_e
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result p1

    .line 1049
    if-nez p1, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v0

    return v2

    .line 1050
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private updateAudioConfigLocked()V
    .registers 17

    .line 880
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v1

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v2

    .line 885
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    const/4 v4, 0x0

    if-eqz v3, :cond_1dd

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1dd

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v3, :cond_1d

    goto/16 :goto_1dd

    .line 893
    :cond_1d
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 894
    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v5

    mul-float/2addr v3, v5

    .line 895
    nop

    .line 896
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_9a

    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_9a

    .line 897
    nop

    .line 898
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v5

    array-length v8, v5

    move v9, v6

    :goto_46
    if-ge v9, v8, :cond_56

    aget-object v10, v5, v9

    .line 899
    invoke-virtual {v10}, Landroid/media/AudioGain;->mode()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_53

    .line 900
    nop

    .line 901
    goto :goto_57

    .line 898
    :cond_53
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    :cond_56
    move-object v10, v4

    .line 905
    :goto_57
    if-eqz v10, :cond_91

    .line 906
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v5

    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v8

    sub-int/2addr v5, v8

    .line 907
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v8

    div-int/2addr v5, v8

    .line 908
    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    move-result v8

    .line 909
    const/high16 v9, 0x3f800000  # 1.0f

    cmpg-float v9, v3, v9

    if-gez v9, :cond_7f

    .line 910
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    move-result v9

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v11, v5

    const-wide/high16 v13, 0x3fe0000000000000L  # 0.5

    add-double/2addr v11, v13

    double-to-int v5, v11

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    goto :goto_83

    .line 912
    :cond_7f
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    move-result v8

    .line 915
    :goto_83
    new-array v5, v7, [I

    aput v8, v5, v6

    .line 916
    nop

    .line 917
    invoke-virtual {v10}, Landroid/media/AudioGain;->channelMask()I

    move-result v8

    .line 916
    invoke-virtual {v10, v7, v8, v5, v6}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    .line 918
    goto :goto_9b

    .line 919
    :cond_91
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v5

    const-string v8, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_9a
    move-object v5, v4

    :goto_9b
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 924
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 925
    new-array v10, v7, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v6

    .line 926
    if-nez v2, :cond_b3

    if-eqz v1, :cond_b1

    goto :goto_b3

    :cond_b1
    move v1, v6

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v1, v7

    .line 928
    :goto_b4
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioDevicePort;

    .line 929
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 930
    iget v13, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 931
    iget v14, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 932
    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 935
    if-eqz v12, :cond_e4

    .line 936
    if-nez v13, :cond_d8

    .line 937
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v13

    .line 939
    :cond_d8
    if-ne v14, v7, :cond_de

    .line 940
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v14

    .line 942
    :cond_de
    if-ne v15, v7, :cond_e4

    .line 943
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->format()I

    move-result v15

    .line 947
    :cond_e4
    if-eqz v12, :cond_f8

    .line 948
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    if-ne v7, v13, :cond_f8

    .line 949
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v7

    if-ne v7, v14, :cond_f8

    .line 950
    invoke-virtual {v12}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    if-eq v7, v15, :cond_12a

    .line 952
    :cond_f8
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    invoke-static {v1, v13}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 953
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_10f

    .line 954
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    aget v13, v1, v6

    .line 956
    :cond_10f
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v1

    if-nez v1, :cond_11a

    .line 957
    const/4 v14, 0x1

    .line 959
    :cond_11a
    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v1

    invoke-static {v1, v15}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v1

    if-nez v1, :cond_125

    .line 960
    const/4 v15, 0x1

    .line 962
    :cond_125
    invoke-virtual {v11, v13, v14, v15, v4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v12

    .line 964
    const/4 v1, 0x1

    .line 966
    :cond_12a
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    const/4 v7, 0x1

    goto :goto_ba

    .line 970
    :cond_12f
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPortConfig;

    .line 971
    if-eqz v8, :cond_139

    if-eqz v5, :cond_1a1

    .line 972
    :cond_139
    nop

    .line 973
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 974
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v1

    goto :goto_162

    .line 975
    :cond_14f
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_161

    .line 977
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v1

    aget v1, v1, v6

    goto :goto_162

    .line 975
    :cond_161
    move v1, v6

    .line 979
    :goto_162
    nop

    .line 980
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v4

    array-length v7, v4

    move v8, v6

    :goto_16b
    if-ge v8, v7, :cond_182

    aget v11, v4, v8

    .line 981
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v12

    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v12

    .line 982
    invoke-static {v11}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v13

    if-ne v12, v13, :cond_17f

    .line 983
    nop

    .line 984
    goto :goto_183

    .line 980
    :cond_17f
    add-int/lit8 v8, v8, 0x1

    goto :goto_16b

    :cond_182
    const/4 v11, 0x1

    .line 987
    :goto_183
    nop

    .line 988
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 989
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    goto :goto_19a

    .line 988
    :cond_199
    const/4 v7, 0x1

    .line 991
    :goto_19a
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2, v1, v11, v7, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v8

    .line 993
    const/4 v1, 0x1

    .line 995
    :cond_1a1
    if-eqz v1, :cond_1dc

    .line 996
    iput v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 997
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1b3

    .line 998
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 1000
    :cond_1b3
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/AudioPortConfig;

    aput-object v8, v1, v6

    .line 1003
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/AudioPortConfig;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPortConfig;

    .line 1000
    invoke-static {v10, v1, v2}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 1004
    aget-object v1, v10, v6

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 1005
    if-eqz v5, :cond_1dc

    .line 1006
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v0, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    .line 1009
    :cond_1dc
    return-void

    .line 886
    :cond_1dd
    :goto_1dd
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1ed

    .line 887
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 888
    iput-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 890
    :cond_1ed
    return-void
.end method

.method private updateAudioSinkLocked()Z
    .registers 5

    .line 1064
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1065
    const/4 v0, 0x0

    return v0

    .line 1067
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1068
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1069
    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v1, :cond_1d

    .line 1070
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_2a

    .line 1072
    :cond_1d
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1073
    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v1

    .line 1074
    if-eqz v1, :cond_2a

    .line 1075
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_38

    .line 1081
    return v3

    .line 1083
    :cond_38
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0
.end method

.method private updateAudioSourceLocked()Z
    .registers 5

    .line 1054
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1055
    return v1

    .line 1057
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1058
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1059
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    const/4 v3, 0x1

    if-nez v2, :cond_27

    if-eqz v0, :cond_2e

    move v1, v3

    goto :goto_2e

    .line 1060
    :cond_27
    invoke-virtual {v2, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v1, v3

    .line 1059
    :cond_2e
    :goto_2e
    return v1
.end method


# virtual methods
.method public onMediaStreamVolumeChanged()V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1111
    monitor-exit v0

    .line 1112
    return-void

    .line 1111
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 7

    .line 1096
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1098
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1100
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1101
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1102
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1104
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1105
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public release()V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 822
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1f

    .line 823
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 824
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 826
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setStreamVolume(F)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_e

    .line 1017
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1018
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1019
    monitor-exit v0

    .line 1020
    return-void

    .line 1015
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Device already released."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1019
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_71

    .line 841
    nop

    .line 842
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_28

    .line 844
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz p1, :cond_26

    .line 845
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p1, p2, v4}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result p1

    .line 846
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_68

    .line 849
    :cond_26
    monitor-exit v0

    return v2

    .line 853
    :cond_28
    if-nez p2, :cond_2c

    .line 854
    monitor-exit v0

    return v3

    .line 857
    :cond_2c
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 858
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v4

    .line 859
    if-eqz v4, :cond_50

    .line 860
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_50

    .line 864
    :cond_4f
    move v4, v3

    :cond_50
    :goto_50
    if-nez v4, :cond_67

    .line 865
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result p1

    .line 866
    if-nez p1, :cond_68

    .line 867
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_68

    .line 864
    :cond_67
    move p1, v4

    .line 871
    :cond_68
    :goto_68
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 872
    if-nez p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v2, v3

    :goto_6f
    monitor-exit v0

    return v2

    .line 838
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Device already released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 873
    :catchall_79
    move-exception p1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p1
.end method
