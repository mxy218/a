.class public final Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    }
.end annotation


# static fields
.field private static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field private static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field private static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field private static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field private static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field private static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG:I = 0x402600c

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventory"


# instance fields
.field private mBecomingNoisyIntentDevices:I

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAddress:Ljava/lang/String;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 3
    .param p1, "broker"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 75
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 873
    const v0, 0xc027f8c

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    .line 67
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 68
    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .registers 11
    .param p1, "device"  # I
    .param p2, "state"  # I
    .param p3, "musicDevice"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 887
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 888
    return v0

    .line 890
    :cond_4
    iget v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr v1, p1

    if-nez v1, :cond_a

    .line 891
    return v0

    .line 893
    :cond_a
    const/4 v1, 0x0

    .line 894
    .local v1, "delay":I
    const/4 v2, 0x0

    .line 895
    .local v2, "devices":I
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "checkSendBecomingNoisyIntent update the noise"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 897
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v5, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 898
    .local v5, "dev":I
    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-nez v6, :cond_31

    iget v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_31

    .line 900
    or-int/2addr v2, v5

    .line 896
    .end local v5  # "dev":I
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 903
    .end local v4  # "i":I
    :cond_34
    const/4 v4, 0x3

    if-nez p3, :cond_3d

    .line 904
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 910
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSendBecomingNoisyIntent: device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", musicDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", devices = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    if-eq p1, p3, :cond_6b

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v5

    if-eqz v5, :cond_b0

    :cond_6b
    if-ne p1, v2, :cond_b0

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 912
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v5

    if-nez v5, :cond_b0

    const v5, 0x8000

    and-int/2addr v5, p3

    if-nez v5, :cond_b0

    .line 914
    invoke-static {v4, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_9a

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 915
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 918
    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v6, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    .line 918
    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 920
    return v0

    .line 924
    :cond_9a
    const/4 v0, 0x0

    .line 925
    .local v0, "arg":I
    const/4 v4, 0x4

    if-eq p1, v4, :cond_a2

    const/16 v4, 0x8

    if-ne p1, v4, :cond_a3

    .line 926
    :cond_a2
    const/4 v0, 0x1

    .line 927
    :cond_a3
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy(I)V

    .line 929
    const/16 v4, 0x2bc

    const-string v5, "audio.sys.noisy.broadcast.delay"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 932
    .end local v0  # "arg":I
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GJ_DEBUG] checkSendBecomingNoisyIntent: device = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; delay = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return v1
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 19
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "state"  # I

    .line 1056
    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 1059
    return-void

    .line 1061
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 1063
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 1064
    .local v5, "status":I
    if-eqz v5, :cond_3c

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listAudioPorts error "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in configureHdmiPlugIntent"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AS.AudioDeviceInventory"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void

    .line 1068
    :cond_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    .line 1069
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-nez v8, :cond_51

    .line 1070
    goto :goto_40

    .line 1072
    :cond_51
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 1073
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_65

    .line 1074
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-eq v9, v10, :cond_65

    .line 1075
    goto :goto_40

    .line 1078
    :cond_65
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 1079
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_9b

    .line 1080
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1081
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_78
    if-ge v13, v12, :cond_88

    aget v14, v9, v13

    .line 1083
    .local v14, "format":I
    if-eqz v14, :cond_85

    .line 1084
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    .end local v14  # "format":I
    :cond_85
    add-int/lit8 v13, v13, 0x1

    goto :goto_78

    .line 1087
    :cond_88
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v13, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v12

    .line 1088
    .local v12, "encodingArray":[I
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1091
    .end local v10  # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12  # "encodingArray":[I
    :cond_9b
    const/4 v10, 0x0

    .line 1092
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_a1
    if-ge v11, v13, :cond_af

    aget v14, v12, v11

    .line 1093
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 1094
    .local v15, "channelCount":I
    if-le v15, v10, :cond_ac

    .line 1095
    move v10, v15

    .line 1092
    .end local v14  # "mask":I
    .end local v15  # "channelCount":I
    :cond_ac
    add-int/lit8 v11, v11, 0x1

    goto :goto_a1

    .line 1098
    :cond_af
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    .end local v7  # "port":Landroid/media/AudioPort;
    .end local v8  # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9  # "formats":[I
    .end local v10  # "maxChannels":I
    goto :goto_40

    .line 1100
    :cond_b5
    return-void
.end method

.method private isCurrentDeviceConnected()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$MfLl81BWvF9OIWh52LJfesOjVdw;

    invoke-direct {v1, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$MfLl81BWvF9OIWh52LJfesOjVdw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$configureHdmiPlugIntent$7(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"  # Ljava/lang/Integer;

    .line 1087
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$disconnectA2dp$0(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4
    .param p0, "toRemove"  # Landroid/util/ArraySet;
    .param p1, "deviceInfo"  # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 511
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 512
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_b
    return-void
.end method

.method static synthetic lambda$disconnectA2dpSink$2(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4
    .param p0, "toRemove"  # Landroid/util/ArraySet;
    .param p1, "deviceInfo"  # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 531
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_b

    .line 532
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_b
    return-void
.end method

.method static synthetic lambda$disconnectHearingAid$4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4
    .param p0, "toRemove"  # Landroid/util/ArraySet;
    .param p1, "deviceInfo"  # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 544
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_b

    .line 545
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_b
    return-void
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "eventSource"  # Ljava/lang/String;
    .param p4, "a2dpCodec"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->MzIsHifiOutDeviceConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 740
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 741
    :cond_c
    const/16 v0, 0x80

    invoke-static {v0, v1, p1, p2, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 743
    .local v1, "res":I
    if-eqz v1, :cond_38

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not connecting device 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to command error "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    const-string v2, "AS.AudioDeviceInventory"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void

    .line 750
    :cond_38
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioService()Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->resendHeadSetMessage()V

    .line 752
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 753
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v4, v0, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 757
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 7
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "delayMs"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 784
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 786
    nop

    .line 787
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "deviceKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 789
    .local v1, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v1, :cond_19

    iget v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_1a

    .line 790
    :cond_19
    const/4 v2, 0x0

    :goto_1a
    nop

    .line 792
    .local v2, "a2dpCodec":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpDockTimeout(Ljava/lang/String;II)V

    .line 795
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "a2dpCodec"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 762
    if-nez p1, :cond_3

    .line 763
    return-void

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 766
    const/16 v0, 0x80

    const-string v2, ""

    invoke-static {v0, v1, p1, v2, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 769
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioService()Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->resendHeadSetMessage()V

    .line 771
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 772
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-ne v1, p1, :cond_2b

    .line 776
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    .line 778
    :cond_2b
    return-void
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 8
    .param p1, "address"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 800
    const/4 v0, 0x0

    const-string v1, ""

    const/high16 v2, -0x7ffe0000

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, v1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 803
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 804
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v2, v1, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 803
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 811
    const/4 v0, 0x0

    const/high16 v1, -0x7ffe0000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 814
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 815
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    return-void
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "streamType"  # I
    .param p4, "eventSource"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v0

    .line 823
    .local v0, "hearingAidVolIndex":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 825
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, p1, p2, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 828
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 829
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v1, p2, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 828
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 833
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "makeHearingAidDeviceAvailable"

    invoke-virtual {v2, p3, v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 835
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 840
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 844
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "device"  # I
    .param p2, "state"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "deviceName"  # Ljava/lang/String;

    .line 953
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v4, v0

    .line 955
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, ""

    const/16 v5, 0x4000

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/high16 v8, -0x7e000000

    const/high16 v9, 0x4000000

    const-string/jumbo v10, "microphone"

    const-string v11, "android.intent.action.HEADSET_PLUG"

    const/4 v12, 0x1

    if-eq v2, v8, :cond_57

    if-eq v2, v7, :cond_50

    const/4 v13, 0x0

    if-eq v2, v6, :cond_49

    const/16 v14, 0x400

    if-eq v2, v14, :cond_45

    if-eq v2, v5, :cond_34

    const/high16 v14, 0x20000

    if-eq v2, v14, :cond_49

    const/high16 v14, 0x40000

    if-eq v2, v14, :cond_45

    if-eq v2, v9, :cond_34

    goto :goto_63

    .line 969
    :cond_34
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    nop

    .line 972
    nop

    .line 971
    invoke-static {v8, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_40

    .line 972
    goto :goto_41

    :cond_40
    move v12, v13

    .line 970
    :goto_41
    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    goto :goto_63

    .line 986
    :cond_45
    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_63

    .line 962
    :cond_49
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-virtual {v4, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    goto :goto_63

    .line 957
    :cond_50
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 959
    goto :goto_63

    .line 975
    :cond_57
    invoke-static {v9, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_a7

    .line 977
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    :goto_63
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 991
    return-void

    .line 994
    :cond_6a
    const-string/jumbo v0, "state"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    const-string v0, "address"

    move-object/from16 v8, p3

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const-string/jumbo v0, "portName"

    move-object/from16 v10, p4

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1000
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1002
    .local v11, "ident":J
    const/4 v0, -0x2

    :try_start_89
    invoke-static {v4, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_a1

    .line 1004
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    nop

    .line 1008
    if-eq v2, v7, :cond_98

    if-eq v2, v6, :cond_98

    if-eq v2, v5, :cond_98

    if-ne v2, v9, :cond_a0

    .line 1012
    :cond_98
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioService()Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->resendHeadSetMessage()V

    .line 1015
    :cond_a0
    return-void

    .line 1004
    :catchall_a1
    move-exception v0

    move-object v5, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 981
    .end local v11  # "ident":J
    :cond_a7
    move-object/from16 v8, p3

    move-object/from16 v10, p4

    return-void
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 853
    monitor-exit v0

    return-void

    .line 855
    :cond_f
    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_20

    .line 856
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 857
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 859
    :cond_20
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private updateAudioRoutes(II)V
    .registers 7
    .param p1, "device"  # I
    .param p2, "state"  # I

    .line 1018
    const/4 v0, 0x0

    .line 1020
    .local v0, "connType":I
    const/4 v1, 0x4

    if-eq p1, v1, :cond_25

    const/16 v1, 0x8

    if-eq p1, v1, :cond_23

    const/16 v1, 0x400

    if-eq p1, v1, :cond_20

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_1d

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_23

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_20

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_1d

    goto :goto_27

    .line 1034
    :cond_1d
    const/16 v0, 0x10

    goto :goto_27

    .line 1030
    :cond_20
    const/16 v0, 0x8

    .line 1031
    goto :goto_27

    .line 1026
    :cond_23
    const/4 v0, 0x2

    .line 1027
    goto :goto_27

    .line 1022
    :cond_25
    const/4 v0, 0x1

    .line 1023
    nop

    .line 1038
    :goto_27
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 1039
    if-nez v0, :cond_2e

    .line 1040
    :try_start_2c
    monitor-exit v1

    return-void

    .line 1042
    :cond_2e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1043
    .local v2, "newConn":I
    if-eqz p2, :cond_36

    .line 1044
    or-int/2addr v2, v0

    goto :goto_38

    .line 1046
    :cond_36
    not-int v3, v0

    and-int/2addr v2, v3

    .line 1048
    :goto_38
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_47

    .line 1049
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1050
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 1052
    .end local v2  # "newConn":I
    :cond_47
    monitor-exit v1

    .line 1053
    return-void

    .line 1052
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_49

    throw v2
.end method


# virtual methods
.method MzIsHifiOutDeviceConnected()Z
    .registers 6

    .line 707
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 708
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 709
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 710
    .local v3, "dev":I
    const/4 v4, 0x4

    if-eq v3, v4, :cond_26

    const/16 v4, 0x8

    if-eq v3, v4, :cond_26

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_23

    goto :goto_26

    .line 708
    .end local v3  # "dev":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 713
    .restart local v3  # "dev":I
    :cond_26
    :goto_26
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 715
    .end local v2  # "i":I
    .end local v3  # "dev":I
    :cond_29
    monitor-exit v0

    .line 716
    return v1

    .line 715
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method checkSendBecomingNoisyIntent(III)I
    .registers 6
    .param p1, "device"  # I
    .param p2, "state"  # I
    .param p3, "musicDevice"  # I

    .line 564
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 565
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 566
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method disconnectA2dp()V
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 508
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 510
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 515
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 516
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 519
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;

    invoke-direct {v4, p0, v2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 523
    .end local v1  # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2  # "delay":I
    :cond_2f
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method disconnectA2dpSink()V
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 528
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 530
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 535
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;

    invoke-direct {v3, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 536
    .end local v1  # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method disconnectHearingAid()V
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 541
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 543
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 548
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 549
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 551
    .local v2, "delay":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;

    invoke-direct {v4, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 556
    .end local v1  # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2  # "delay":I
    :cond_2f
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 719
    const-string v0, "\nmConnectedDevices:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 721
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 722
    .local v1, "dev":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-nez v2, :cond_36

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OUT] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 725
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IN] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    .end local v1  # "dev":I
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 728
    .end local v0  # "i":I
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmBecomingNoisyIntentDevices = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object v0
.end method

.method handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 19
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "a2dpVolume"  # I

    .line 628
    move-object v1, p0

    move-object v8, p1

    if-nez p2, :cond_12

    .line 629
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 631
    return-void

    .line 634
    :cond_12
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 635
    :try_start_15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "address":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 637
    .local v3, "a2dpCodec":I
    const/16 v4, 0x80

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "deviceKey":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 640
    .local v6, "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v6, :cond_36

    .line 642
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 643
    monitor-exit v2

    return-void

    .line 645
    :cond_36
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v7, v9, :cond_83

    .line 646
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v6, v9

    .line 647
    iget v9, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-eq v9, v4, :cond_50

    .line 648
    nop

    .line 645
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 651
    :cond_50
    iget-object v9, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 652
    .local v9, "existingDevicekey":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v10, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v11, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 654
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 653
    invoke-virtual {v10, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v4, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/server/audio/BtHelper;->isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 660
    monitor-exit v2

    return-void

    .line 662
    :cond_75
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_94

    move/from16 v11, p5

    :try_start_7b
    invoke-direct {v10, p1, v11, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V

    .line 665
    monitor-exit v2

    return-void

    .line 645
    .end local v9  # "existingDevicekey":Ljava/lang/String;
    :cond_83
    move/from16 v11, p5

    .line 667
    .end local v0  # "address":Ljava/lang/String;
    .end local v3  # "a2dpCodec":I
    .end local v5  # "deviceKey":Ljava/lang/String;
    .end local v6  # "deviceInfo":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v7  # "i":I
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_99

    .line 669
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 671
    return-void

    .line 667
    :catchall_94
    move-exception v0

    move/from16 v11, p5

    :goto_97
    :try_start_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_99

    throw v0

    :catchall_99
    move-exception v0

    goto :goto_97
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "connect"  # Z
    .param p2, "device"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "deviceName"  # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 469
    :try_start_3
    invoke-static {p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "deviceKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 474
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    move v5, v3

    goto :goto_16

    :cond_15
    move v5, v4

    .line 478
    .local v5, "isConnected":Z
    :goto_16
    if-eqz p1, :cond_56

    if-nez v5, :cond_56

    .line 479
    invoke-static {p2, v3, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 482
    .local v6, "res":I
    if-eqz v6, :cond_45

    .line 483
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    monitor-exit v0

    return v4

    .line 487
    :cond_45
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v8, p2, p4, p3, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 490
    monitor-exit v0

    return v3

    .line 491
    .end local v6  # "res":I
    :cond_56
    if-nez p1, :cond_64

    if-eqz v5, :cond_64

    .line 492
    invoke-static {p2, v4, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 496
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    monitor-exit v0

    return v3

    .line 499
    :cond_64
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceSpec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", connect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    nop

    .end local v1  # "deviceKey":Ljava/lang/String;
    .end local v2  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5  # "isConnected":Z
    monitor-exit v0

    .line 502
    return v4

    .line 501
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public synthetic lambda$disconnectA2dp$1$AudioDeviceInventory(ILjava/lang/String;)V
    .registers 3
    .param p1, "delay"  # I
    .param p2, "deviceAddress"  # Ljava/lang/String;

    .line 520
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$disconnectA2dpSink$3$AudioDeviceInventory(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 535
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disconnectHearingAid$5$AudioDeviceInventory(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$isCurrentDeviceConnected$6$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 4
    .param p1, "deviceInfo"  # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 865
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 22
    .param p1, "btInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "event"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 277
    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 278
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v10, :cond_b

    .line 279
    return-void

    .line 284
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v11

    .line 285
    .local v11, "a2dpVolume":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v12

    .line 287
    .local v12, "a2dpCodec":I
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 289
    const-string v0, ""

    move-object v13, v0

    goto :goto_22

    .line 288
    :cond_21
    move-object v13, v0

    .line 291
    .end local v0  # "address":Ljava/lang/String;
    .local v13, "address":Ljava/lang/String;
    :goto_22
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothA2dpActiveDeviceChange addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 295
    iget-object v14, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 298
    :try_start_4d
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 299
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "A2dp config change ignored"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 301
    monitor-exit v14

    return-void

    .line 303
    :cond_63
    const/16 v0, 0x80

    invoke-static {v0, v13}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 305
    .local v15, "key":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v7, v1

    .line 306
    .local v7, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v7, :cond_7f

    .line 307
    const-string v0, "AS.AudioDeviceInventory"

    const-string/jumbo v1, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-exit v14

    return-void

    .line 311
    :cond_7f
    const/4 v1, 0x0

    .line 313
    .local v1, "wasMuted":Z
    const/4 v2, 0x3

    const/4 v5, 0x1

    if-ne v9, v5, :cond_9f

    .line 316
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "Mute the stream before reconfigure"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaMute(I)V

    .line 318
    const/4 v1, 0x1

    .line 320
    const/4 v3, -0x1

    if-eq v11, v3, :cond_ac

    .line 321
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v4, v11, 0xa

    const-string/jumbo v6, "onBluetoothA2dpActiveDeviceChange"

    invoke-virtual {v3, v2, v4, v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_ac

    .line 327
    :cond_9f
    if-nez v9, :cond_ac

    .line 328
    iget v3, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v3, v12, :cond_ac

    .line 329
    iput v12, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 330
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15, v7}, Landroid/util/ArrayMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_ac
    :goto_ac
    move/from16 v16, v1

    .line 334
    .end local v1  # "wasMuted":Z
    .local v16, "wasMuted":Z
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v13, v1, v12}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d2

    .line 335
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v6

    .line 338
    .local v6, "musicDevice":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move v0, v5

    move/from16 v5, v17

    move-object/from16 v17, v7

    .end local v7  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .local v17, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    goto :goto_d5

    .line 333
    .end local v6  # "musicDevice":I
    .end local v17  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .restart local v7  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_d2
    move v0, v5

    move-object/from16 v17, v7

    .line 344
    .end local v7  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .restart local v17  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :goto_d5
    if-eqz v16, :cond_e7

    if-ne v9, v0, :cond_e7

    .line 345
    const-string v0, "AS.AudioDeviceInventory"

    const-string v1, "Unmute the stream after reconfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 348
    .end local v15  # "key":Ljava/lang/String;
    .end local v16  # "wasMuted":Z
    .end local v17  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    :cond_e7
    monitor-exit v14

    .line 349
    return-void

    .line 348
    :catchall_e9
    move-exception v0

    monitor-exit v14
    :try_end_eb
    .catchall {:try_start_4d .. :try_end_eb} :catchall_e9

    throw v0
.end method

.method onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "a2dpCodec"  # I

    .line 352
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 353
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method onReportNewRoutes()V
    .registers 5

    .line 358
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 359
    .local v0, "n":I
    if-lez v0, :cond_29

    .line 361
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 362
    :try_start_b
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 363
    .local v2, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_26

    .line 364
    :goto_13
    if-lez v0, :cond_29

    .line 365
    add-int/lit8 v0, v0, -0x1

    .line 366
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 368
    .local v1, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_1f
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 369
    :goto_22
    goto :goto_25

    :catch_23
    move-exception v3

    goto :goto_22

    .line 370
    .end local v1  # "obs":Landroid/media/IAudioRoutesObserver;
    :goto_25
    goto :goto_13

    .line 363
    .end local v2  # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2

    .line 372
    :cond_29
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    .line 374
    return-void
.end method

.method onRestoreDevices()V
    .registers 9

    .line 141
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 143
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 144
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    const/4 v7, 0x1

    invoke-static {v3, v7, v4, v5, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 142
    nop

    .end local v2  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 151
    .end local v1  # "i":I
    :cond_24
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v1
.end method

.method onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 16
    .param p1, "btInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 158
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v1

    .line 163
    .local v1, "a2dpVolume":I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 165
    const-string v2, ""

    .line 167
    :cond_14
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP sink connected: device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 171
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v3

    .line 173
    .local v3, "a2dpCodec":I
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 174
    nop

    .line 175
    :try_start_47
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 174
    const/16 v6, 0x80

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 177
    .local v7, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/4 v8, 0x0

    if-eqz v7, :cond_5e

    const/4 v9, 0x1

    goto :goto_5f

    :cond_5e
    move v9, v8

    .line 179
    .local v9, "isConnected":Z
    :goto_5f
    const/4 v10, 0x2

    if-eqz v9, :cond_7f

    if-eq p2, v10, :cond_7f

    .line 180
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 181
    if-nez p2, :cond_c6

    .line 185
    const/16 v6, 0x1f40

    invoke-direct {p0, v2, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto :goto_c6

    .line 191
    :cond_72
    const-string v6, "AS.AudioDeviceInventory"

    const-string v8, "[GJ_DEBUG] onSetA2dpSinkConnectionState: makeA2dpDeviceUnavailableNow ----1"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v6, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-direct {p0, v2, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    goto :goto_c6

    .line 195
    :cond_7f
    if-nez v9, :cond_c6

    if-ne p2, v10, :cond_c6

    .line 196
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v10

    if-eqz v10, :cond_91

    .line 198
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 199
    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    goto :goto_ae

    .line 203
    :cond_91
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpDockTimeout()Z

    move-result v10

    if-eqz v10, :cond_ae

    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-eqz v10, :cond_ae

    .line 204
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 206
    const-string v10, "AS.AudioDeviceInventory"

    const-string v11, "[GJ_DEBUG] onSetA2dpSinkConnectionState: makeA2dpDeviceUnavailableNow ----2"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v10, v8}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 212
    :cond_ae
    :goto_ae
    const/4 v8, -0x1

    if-eq v1, v8, :cond_bc

    .line 213
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v10, 0x3

    mul-int/lit8 v11, v1, 0xa

    const-string/jumbo v12, "onSetA2dpSinkConnectionState"

    invoke-virtual {v8, v10, v11, v6, v12}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 218
    :cond_bc
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    .end local v5  # "key":Ljava/lang/String;
    .end local v7  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v9  # "isConnected":Z
    :cond_c6
    :goto_c6
    monitor-exit v4

    .line 222
    return-void

    .line 221
    :catchall_c8
    move-exception v5

    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_47 .. :try_end_ca} :catchall_c8

    throw v5
.end method

.method onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 10
    .param p1, "btInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p2, "state"  # I

    .line 226
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 231
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 233
    const-string v1, ""

    .line 236
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 237
    const/high16 v3, -0x7ffe0000

    :try_start_15
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 240
    .local v4, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v4, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 242
    .local v5, "isConnected":Z
    :goto_26
    const/4 v6, 0x2

    if-eqz v5, :cond_2f

    if-eq p2, v6, :cond_2f

    .line 243
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_36

    .line 244
    :cond_2f
    if-nez v5, :cond_36

    if-ne p2, v6, :cond_36

    .line 245
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 247
    .end local v3  # "key":Ljava/lang/String;
    .end local v4  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5  # "isConnected":Z
    :cond_36
    :goto_36
    monitor-exit v2

    .line 248
    return-void

    .line 247
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 11
    .param p1, "btDevice"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "streamType"  # I

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 254
    const-string v0, ""

    .line 256
    :cond_c
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetHearingAidConnectionState addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 260
    const/high16 v2, 0x8000000

    .line 261
    :try_start_2d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 263
    .local v3, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v3, :cond_41

    const/4 v4, 0x1

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    .line 265
    .local v4, "isConnected":Z
    :goto_42
    const/4 v5, 0x2

    if-eqz v4, :cond_4b

    if-eq p2, v5, :cond_4b

    .line 266
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_59

    .line 267
    :cond_4b
    if-nez v4, :cond_59

    if-ne p2, v5, :cond_59

    .line 268
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v5, p3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v4  # "isConnected":Z
    :cond_59
    :goto_59
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_2d .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .registers 10
    .param p1, "wdcs"  # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 382
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 385
    :try_start_d
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const v2, 0x402600c

    const/4 v3, 0x1

    if-nez v1, :cond_22

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    .line 387
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 399
    :cond_22
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    move v1, v4

    :goto_2a
    iget v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 402
    monitor-exit v0

    return-void

    .line 404
    :cond_38
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v1, :cond_52

    .line 405
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_49

    .line 406
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v1, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 409
    :cond_49
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    .line 411
    :cond_52
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v2, 0x400

    if-ne v1, v2, :cond_61

    .line 412
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 414
    :cond_61
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 418
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v2, 0x8

    const/4 v4, 0x4

    if-eq v1, v4, :cond_7e

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    if-ne v1, v2, :cond_87

    .line 420
    :cond_7e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioService()Lcom/android/server/audio/AudioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->MzReadAndSetHifiParamExt()V

    .line 422
    :cond_87
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    if-eq v1, v4, :cond_95

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    if-eq v1, v2, :cond_95

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_9f

    .line 426
    :cond_95
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioService()Lcom/android/server/audio/AudioService;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioService;->MzPostVolumeChanged(II)V

    .line 429
    :cond_9f
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_d .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method onToggleHdmi()V
    .registers 16

    .line 433
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 435
    const/16 v1, 0x400

    :try_start_5
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 437
    .local v2, "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-nez v2, :cond_1f

    .line 438
    const-string v3, "AS.AudioDeviceInventory"

    const-string/jumbo v4, "invalid null DeviceInfo in onToggleHdmi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v0

    return-void

    .line 442
    :cond_1f
    const/16 v4, 0x400

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, "android"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v10, 0x400

    const/4 v11, 0x1

    const-string v12, ""

    const-string v13, ""

    const-string v14, "android"

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    nop

    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "di":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V
    .registers 12
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "musicDevice"  # I
    .param p6, "a2dpVolume"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 586
    const/4 v0, 0x2

    if-eq p3, v0, :cond_20

    const/16 v1, 0xb

    if-ne p3, v1, :cond_8

    goto :goto_20

    .line 587
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 590
    const/4 v2, 0x0

    if-ne p3, v0, :cond_33

    if-nez p4, :cond_33

    .line 591
    if-ne p2, v0, :cond_2b

    const/4 v2, 0x1

    .line 592
    .local v2, "intState":I
    :cond_2b
    const/16 v3, 0x80

    :try_start_2d
    invoke-direct {p0, v3, v2, p5}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v3

    move v2, v3

    .line 594
    .local v2, "delay":I
    goto :goto_34

    .line 595
    .end local v2  # "delay":I
    :cond_33
    nop

    .line 598
    .restart local v2  # "delay":I
    :goto_34
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 606
    .local v3, "a2dpCodec":I
    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, p1, p6, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 608
    .local v4, "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    if-ne p3, v0, :cond_4d

    .line 609
    if-nez v2, :cond_47

    .line 610
    invoke-virtual {p0, v4, p2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_52

    .line 612
    :cond_47
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_52

    .line 617
    :cond_4d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 621
    .end local v3  # "a2dpCodec":I
    .end local v4  # "a2dpDeviceInfo":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    :goto_52
    monitor-exit v1

    .line 622
    return-void

    .line 621
    .end local v2  # "delay":I
    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_54

    throw v0
.end method

.method setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .registers 8
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "suppressNoisyIntent"  # Z
    .param p4, "musicDevice"  # I

    .line 688
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 689
    const/4 v1, 0x0

    if-nez p3, :cond_12

    .line 690
    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    const/4 v1, 0x1

    .line 691
    .local v1, "intState":I
    :cond_a
    const/high16 v2, 0x8000000

    :try_start_c
    invoke-direct {p0, v2, v1, p4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    move v1, v2

    .line 693
    .local v1, "delay":I
    goto :goto_13

    .line 694
    .end local v1  # "delay":I
    :cond_12
    nop

    .line 696
    .restart local v1  # "delay":I
    :goto_13
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 697
    monitor-exit v0

    return v1

    .line 698
    .end local v1  # "delay":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .param p1, "type"  # I
    .param p2, "state"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;

    .line 675
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 676
    const/4 v0, 0x0

    move v10, p1

    move/from16 v11, p2

    :try_start_8
    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v0

    .line 677
    .local v0, "delay":I
    iget-object v12, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v13, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 680
    monitor-exit v9

    return v0

    .line 681
    .end local v0  # "delay":I
    :catchall_23
    move-exception v0

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"  # Landroid/media/IAudioRoutesObserver;

    .line 570
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 571
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 572
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 573
    monitor-exit v0

    return-object v1

    .line 574
    .end local v1  # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
