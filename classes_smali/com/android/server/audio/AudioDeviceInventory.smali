.class public Lcom/android/server/audio/AudioDeviceInventory;
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

.field private mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

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
.method constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 816
    const v0, 0xc027f8c

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 816
    const v0, 0xc027f8c

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    .line 72
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 73
    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 830
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 831
    return v0

    .line 833
    :cond_4
    iget p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    .line 834
    return v0

    .line 836
    :cond_a
    nop

    .line 837
    nop

    .line 838
    move p2, v0

    move v1, p2

    :goto_e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p2, v2, :cond_2e

    .line 839
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 840
    const/high16 v3, -0x80000000

    and-int/2addr v3, v2

    if-nez v3, :cond_2b

    iget v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBecomingNoisyIntentDevices:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2b

    .line 842
    or-int/2addr v1, v2

    .line 838
    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 845
    :cond_2e
    const/4 p2, 0x3

    if-nez p3, :cond_37

    .line 846
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 852
    :cond_37
    if-eq p1, p3, :cond_41

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_79

    :cond_41
    if-ne p1, v1, :cond_79

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 853
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result p1

    if-nez p1, :cond_79

    const p1, 0x8000

    and-int/2addr p1, p3

    if-nez p1, :cond_79

    .line 855
    invoke-static {p2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 856
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result p1

    if-nez p1, :cond_72

    .line 859
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string p3, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {p2, p3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 860
    const-string p3, "AS.AudioDeviceInventory"

    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p2

    .line 859
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 861
    return v0

    .line 863
    :cond_72
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 864
    const/16 v0, 0x3e8

    .line 867
    :cond_79
    return v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 11

    .line 977
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    .line 980
    return-void

    .line 982
    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 983
    new-array v1, v0, [I

    .line 984
    invoke-static {p2, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v1

    .line 985
    if-eqz v1, :cond_37

    .line 986
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "listAudioPorts error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in configureHdmiPlugIntent"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioDeviceInventory"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void

    .line 989
    :cond_37
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPort;

    .line 990
    instance-of v2, v1, Landroid/media/AudioDevicePort;

    if-nez v2, :cond_4c

    .line 991
    goto :goto_3b

    .line 993
    :cond_4c
    check-cast v1, Landroid/media/AudioDevicePort;

    .line 994
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v2

    const/16 v3, 0x400

    if-eq v2, v3, :cond_5f

    .line 995
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_5f

    .line 996
    goto :goto_3b

    .line 999
    :cond_5f
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v2

    .line 1000
    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_95

    .line 1001
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1002
    array-length v5, v2

    move v6, v4

    :goto_72
    if-ge v6, v5, :cond_82

    aget v7, v2, v6

    .line 1004
    if-eqz v7, :cond_7f

    .line 1005
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 1008
    :cond_82
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$u_r8SlQF9hKqpPB7hUtp-bqyzdc;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 1009
    const-string v3, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1012
    :cond_95
    nop

    .line 1013
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_9c
    if-ge v4, v2, :cond_aa

    aget v5, v1, v4

    .line 1014
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v5

    .line 1015
    if-le v5, v3, :cond_a7

    .line 1016
    move v3, v5

    .line 1013
    :cond_a7
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 1019
    :cond_aa
    const-string v1, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    goto :goto_3b

    .line 1021
    :cond_b0
    return-void
.end method

.method private isCurrentDeviceConnected()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 807
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
    .registers 1

    .line 1008
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$disconnectA2dp$0(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 489
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 490
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_b
    return-void
.end method

.method static synthetic lambda$disconnectA2dpSink$2(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 509
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_b

    .line 510
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_b
    return-void
.end method

.method static synthetic lambda$disconnectHearingAid$4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 522
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_b

    .line 523
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_b
    return-void
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 694
    const/16 p3, 0x80

    invoke-static {p3, v1, p1, p2, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 697
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 699
    invoke-static {p3, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, p3, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 698
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 703
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 727
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 729
    nop

    .line 730
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 732
    if-eqz v1, :cond_19

    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_1a

    .line 733
    :cond_19
    const/4 v1, 0x0

    .line 735
    :goto_1a
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpDockTimeout(Ljava/lang/String;II)V

    .line 738
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 708
    if-nez p1, :cond_3

    .line 709
    return-void

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 712
    const/16 v0, 0x80

    const-string v2, ""

    invoke-static {v0, v1, p1, v2, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 714
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 715
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-ne v0, p1, :cond_23

    .line 719
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    .line 721
    :cond_23
    return-void
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 743
    const/4 v0, 0x0

    const-string v1, ""

    const/high16 v2, -0x7ffe0000

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, v1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 746
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 747
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v2, v1, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 746
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 754
    const/4 v0, 0x0

    const/high16 v1, -0x7ffe0000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 757
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 758
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    return-void
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 764
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v0, 0x8000000

    invoke-virtual {p4, p3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result p4

    .line 766
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p4, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 768
    const/4 p4, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 771
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 772
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v3, v0, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 771
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 776
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string p4, "makeHearingAidDeviceAvailable"

    invoke-virtual {p1, p3, v0, p4}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 778
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 783
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    const-string v2, ""

    invoke-static {v1, v0, p1, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 786
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 787
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 886
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 888
    const-string v1, ""

    const/high16 v2, 0x4000000

    const/high16 v3, -0x7e000000

    const-string v4, "microphone"

    const-string v5, "android.intent.action.HEADSET_PLUG"

    const/4 v6, 0x1

    if-eq p1, v3, :cond_4c

    const/4 v7, 0x4

    if-eq p1, v7, :cond_45

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq p1, v7, :cond_3e

    const/16 v7, 0x400

    if-eq p1, v7, :cond_3a

    const/high16 v7, 0x20000

    if-eq p1, v7, :cond_3e

    const/high16 v7, 0x40000

    if-eq p1, v7, :cond_3a

    if-eq p1, v2, :cond_29

    goto :goto_58

    .line 899
    :cond_29
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    nop

    .line 902
    nop

    .line 901
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_35

    .line 902
    goto :goto_36

    :cond_35
    move v6, v8

    .line 900
    :goto_36
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    goto :goto_58

    .line 916
    :cond_3a
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_58

    .line 895
    :cond_3e
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    goto :goto_58

    .line 890
    :cond_45
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    goto :goto_58

    .line 905
    :cond_4c
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_87

    .line 907
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    :goto_58
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5f

    .line 921
    return-void

    .line 924
    :cond_5f
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const-string p1, "address"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string/jumbo p1, "portName"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const/high16 p1, 0x40000000  # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 932
    const/4 p3, -0x2

    :try_start_7a
    invoke-static {v0, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_82

    .line 934
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    nop

    .line 936
    return-void

    .line 934
    :catchall_82
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 911
    :cond_87
    return-void
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mConnectedDevices"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 795
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 796
    monitor-exit v0

    return-void

    .line 798
    :cond_f
    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_20

    .line 799
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 800
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 802
    :cond_20
    monitor-exit v0

    .line 803
    return-void

    .line 802
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private updateAudioRoutes(II)V
    .registers 5

    .line 939
    nop

    .line 941
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_25

    if-eq p1, v1, :cond_23

    const/16 v0, 0x400

    if-eq p1, v0, :cond_21

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_1e

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_23

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_21

    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_1e

    const/4 v1, 0x0

    goto :goto_27

    .line 955
    :cond_1e
    const/16 v1, 0x10

    goto :goto_27

    .line 951
    :cond_21
    nop

    .line 952
    goto :goto_27

    .line 947
    :cond_23
    const/4 v1, 0x2

    .line 948
    goto :goto_27

    .line 943
    :cond_25
    const/4 v1, 0x1

    .line 944
    nop

    .line 959
    :goto_27
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1

    .line 960
    if-nez v1, :cond_2e

    .line 961
    :try_start_2c
    monitor-exit p1

    return-void

    .line 963
    :cond_2e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 964
    if-eqz p2, :cond_37

    .line 965
    or-int p2, v0, v1

    goto :goto_39

    .line 967
    :cond_37
    not-int p2, v1

    and-int/2addr p2, v0

    .line 969
    :goto_39
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq p2, v0, :cond_48

    .line 970
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput p2, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 971
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 973
    :cond_48
    monitor-exit p1

    .line 974
    return-void

    .line 973
    :catchall_4a
    move-exception p2

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_4a

    throw p2
.end method


# virtual methods
.method checkSendBecomingNoisyIntent(III)I
    .registers 5

    .line 542
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 543
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result p1

    monitor-exit v0

    return p1

    .line 544
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method disconnectA2dp()V
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 486
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 488
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$y5XThSW6MLia8Z0qpQToEJpUJk0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 493
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 494
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 497
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 501
    :cond_2f
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method disconnectA2dpSink()V
    .registers 5

    .line 505
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 506
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 508
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$0fz2EAO4sH309I_0WQlshYm7ShE;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 513
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;

    invoke-direct {v2, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$xRa5RyFQAe2dGU7YDh18NalwMMg;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 514
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method disconnectHearingAid()V
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 519
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 521
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;

    invoke-direct {v3, v1}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$nQz4ldQjburNlVucAV7ieYoic28;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 526
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 527
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 529
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;

    invoke-direct {v2, p0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$9yZUrl4jHdQ7A-5G79yQVDbYVSI;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 534
    :cond_2e
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object v0
.end method

.method handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 14

    .line 611
    if-nez p2, :cond_d

    .line 612
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 614
    return-void

    .line 617
    :cond_d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 618
    :try_start_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 620
    const/16 v3, 0x80

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 623
    if-eqz v5, :cond_31

    .line 625
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 626
    monitor-exit v0

    return-void

    .line 628
    :cond_31
    const/4 v5, 0x0

    :goto_32
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 629
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 630
    iget v7, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-eq v7, v3, :cond_4a

    .line 631
    nop

    .line 628
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 634
    :cond_4a
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 635
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance p3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 637
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, v3, p4, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 636
    invoke-virtual {p2, v4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object p2, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/audio/BtHelper;->isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 643
    monitor-exit v0

    return-void

    .line 645
    :cond_6f
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance p3, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {p3, p1, p5, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V

    .line 648
    monitor-exit v0

    return-void

    .line 650
    :cond_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_10 .. :try_end_7c} :catchall_87

    .line 652
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 654
    return-void

    .line 650
    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p1
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 446
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 447
    :try_start_3
    invoke-static {p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 452
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    move v5, v3

    goto :goto_16

    :cond_15
    move v5, v4

    .line 456
    :goto_16
    if-eqz p1, :cond_56

    if-nez v5, :cond_56

    .line 457
    invoke-static {p2, v3, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 460
    if-eqz p1, :cond_45

    .line 461
    const-string p3, "AS.AudioDeviceInventory"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not connecting device 0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " due to command error "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-exit v0

    return v4

    .line 465
    :cond_45
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, p2, p4, p3, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 468
    monitor-exit v0

    return v3

    .line 469
    :cond_56
    if-nez p1, :cond_64

    if-eqz v5, :cond_64

    .line 470
    invoke-static {p2, v4, p3, p4, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 474
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    monitor-exit v0

    return v3

    .line 477
    :cond_64
    const-string p2, "AS.AudioDeviceInventory"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", deviceSpec="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", connect="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-exit v0

    .line 480
    return v4

    .line 479
    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1033
    nop

    .line 1034
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1033
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1035
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1036
    :try_start_e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return p1

    .line 1037
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public synthetic lambda$disconnectA2dp$1$AudioDeviceInventory(ILjava/lang/String;)V
    .registers 3

    .line 498
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$disconnectA2dpSink$3$AudioDeviceInventory(Ljava/lang/String;)V
    .registers 2

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disconnectHearingAid$5$AudioDeviceInventory(Ljava/lang/String;)V
    .registers 2

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$isCurrentDeviceConnected$6$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 3

    .line 808
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 291
    if-nez v1, :cond_7

    .line 292
    return-void

    .line 297
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v0

    .line 298
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result p1

    .line 300
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 302
    const-string v2, ""

    .line 304
    :cond_1b
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBluetoothA2dpActiveDeviceChange addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 308
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 309
    :try_start_46
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 310
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v0, "A2dp config change ignored (scheduled connection change)"

    invoke-direct {p2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 312
    monitor-exit v7

    return-void

    .line 314
    :cond_5c
    const/16 v3, 0x80

    invoke-static {v3, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 317
    if-nez v5, :cond_75

    .line 318
    const-string p1, "AS.AudioDeviceInventory"

    const-string p2, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    monitor-exit v7

    return-void

    .line 322
    :cond_75
    const/4 v6, 0x1

    const/4 v8, 0x3

    if-ne p2, v6, :cond_87

    .line 324
    const/4 p2, -0x1

    if-eq v0, p2, :cond_94

    .line 325
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v0, v0, 0xa

    const-string/jumbo v4, "onBluetoothA2dpActiveDeviceChange"

    invoke-virtual {p2, v8, v0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_94

    .line 331
    :cond_87
    if-nez p2, :cond_94

    .line 332
    iget p2, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq p2, p1, :cond_94

    .line 333
    iput p1, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 334
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4, v5}, Landroid/util/ArrayMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_94
    :goto_94
    nop

    .line 338
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    .line 337
    invoke-static {v3, v2, p2, p1}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_ad

    .line 339
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v5

    .line 342
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    .line 347
    :cond_ad
    monitor-exit v7

    .line 348
    return-void

    .line 347
    :catchall_af
    move-exception p1

    monitor-exit v7
    :try_end_b1
    .catchall {:try_start_46 .. :try_end_b1} :catchall_af

    throw p1
.end method

.method onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method onReportNewRoutes()V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 358
    if-lez v0, :cond_29

    .line 360
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 361
    :try_start_b
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 362
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_26

    .line 363
    :goto_13
    if-lez v0, :cond_29

    .line 364
    add-int/lit8 v0, v0, -0x1

    .line 365
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 367
    :try_start_1f
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 368
    :goto_22
    goto :goto_25

    :catch_23
    move-exception v1

    goto :goto_22

    .line 369
    :goto_25
    goto :goto_13

    .line 362
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 371
    :cond_29
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 372
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    .line 373
    return-void
.end method

.method onRestoreDevices()V
    .registers 8

    .line 148
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 150
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 151
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    const/4 v6, 0x1

    invoke-static {v3, v6, v4, v5, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 158
    :cond_23
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v1

    .line 172
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 174
    const-string v2, ""

    .line 177
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result p1

    .line 179
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

    const-string v6, " codec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 184
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 185
    nop

    .line 186
    :try_start_4f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 185
    const/16 v5, 0x80

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 188
    const/4 v6, 0x0

    if-eqz v4, :cond_66

    const/4 v7, 0x1

    goto :goto_67

    :cond_66
    move v7, v6

    .line 190
    :goto_67
    const/4 v8, 0x2

    if-eqz v7, :cond_8a

    .line 191
    if-ne p2, v8, :cond_76

    .line 194
    iget p2, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq p1, p2, :cond_ca

    .line 195
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_ca

    .line 198
    :cond_76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 199
    if-nez p2, :cond_ca

    .line 203
    const/16 p1, 0x1f40

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto :goto_ca

    .line 208
    :cond_84
    iget p1, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    goto :goto_ca

    .line 211
    :cond_8a
    if-nez v7, :cond_ca

    if-ne p2, v8, :cond_ca

    .line 212
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 214
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 215
    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    goto :goto_b2

    .line 219
    :cond_9c
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpDockTimeout()Z

    move-result p2

    if-eqz p2, :cond_b2

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    if-eqz p2, :cond_b2

    .line 220
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->cancelA2dpDockTimeout()V

    .line 221
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 225
    :cond_b2
    :goto_b2
    const/4 p2, -0x1

    if-eq v1, p2, :cond_c0

    .line 226
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x3

    mul-int/lit8 v1, v1, 0xa

    const-string/jumbo v6, "onSetA2dpSinkConnectionState"

    invoke-virtual {p2, v4, v1, v5, v6}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 231
    :cond_c0
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v2, p2, v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    :cond_ca
    :goto_ca
    monitor-exit v3

    .line 235
    return-void

    .line 234
    :catchall_cc
    move-exception p1

    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_4f .. :try_end_ce} :catchall_cc

    throw p1
.end method

.method onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 6

    .line 239
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 246
    const-string p1, ""

    .line 249
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 250
    const/high16 v1, -0x7ffe0000

    :try_start_15
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 253
    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 255
    :goto_26
    const/4 v2, 0x2

    if-eqz v1, :cond_2f

    if-eq p2, v2, :cond_2f

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_36

    .line 257
    :cond_2f
    if-nez v1, :cond_36

    if-ne p2, v2, :cond_36

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 260
    :cond_36
    :goto_36
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9

    .line 265
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 267
    const-string v0, ""

    .line 269
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

    .line 272
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 273
    const/high16 v2, 0x8000000

    .line 274
    :try_start_2d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 276
    if-eqz v2, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    .line 278
    :goto_42
    const/4 v3, 0x2

    if-eqz v2, :cond_4b

    if-eq p2, v3, :cond_4b

    .line 279
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_59

    .line 280
    :cond_4b
    if-nez v2, :cond_59

    if-ne p2, v3, :cond_59

    .line 281
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    :cond_59
    :goto_59
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_5b
    move-exception p1

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_2d .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .registers 9

    .line 381
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 384
    :try_start_d
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const v2, 0x402600c

    const/4 v3, 0x1

    if-nez v1, :cond_22

    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    .line 386
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 390
    :cond_22
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_28

    goto :goto_29

    :cond_28
    move v3, v4

    :goto_29
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 393
    monitor-exit v0

    return-void

    .line 395
    :cond_37
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v1, :cond_51

    .line 396
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_48

    .line 397
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v1, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 400
    :cond_48
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    .line 402
    :cond_51
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v2, 0x400

    if-ne v1, v2, :cond_60

    .line 403
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 405
    :cond_60
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 406
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget p1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_74
    move-exception p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_74

    throw p1
.end method

.method onToggleHdmi()V
    .registers 15

    .line 411
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 413
    const/16 v1, 0x400

    :try_start_5
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 415
    if-nez v1, :cond_1e

    .line 416
    const-string v1, "AS.AudioDeviceInventory"

    const-string v2, "invalid null DeviceInfo in onToggleHdmi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    monitor-exit v0

    return-void

    .line 420
    :cond_1e
    const/16 v3, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, "android"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v9, 0x400

    const/4 v10, 0x1

    const-string v11, ""

    const-string v12, ""

    const-string v13, "android"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 566
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1f

    const/16 v1, 0xb

    if-ne p3, v1, :cond_8

    goto :goto_1f

    .line 567
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid profile "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 570
    const/4 v2, 0x0

    if-ne p3, v0, :cond_33

    if-nez p4, :cond_33

    .line 572
    if-ne p2, v0, :cond_2b

    .line 573
    const/4 v2, 0x1

    goto :goto_2c

    .line 574
    :cond_2b
    nop

    .line 575
    :goto_2c
    const/16 p4, 0x80

    :try_start_2e
    invoke-direct {p0, p4, v2, p5}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 577
    goto :goto_34

    .line 578
    :cond_33
    nop

    .line 581
    :goto_34
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result p4

    .line 589
    new-instance p5, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {p5, p1, p6, p4}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 591
    if-ne p3, v0, :cond_4d

    .line 592
    if-nez v2, :cond_47

    .line 593
    invoke-virtual {p0, p5, p2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_52

    .line 595
    :cond_47
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p2, p5, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_52

    .line 600
    :cond_4d
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p2, p5, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 604
    :goto_52
    monitor-exit v1

    .line 605
    return-void

    .line 604
    :catchall_54
    move-exception p1

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_54

    throw p1
.end method

.method setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .registers 7

    .line 671
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 672
    const/4 v1, 0x0

    if-nez p3, :cond_11

    .line 673
    const/4 p3, 0x2

    if-ne p2, p3, :cond_a

    const/4 v1, 0x1

    .line 674
    :cond_a
    const/high16 p3, 0x8000000

    :try_start_c
    invoke-direct {p0, p3, v1, p4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    .line 676
    goto :goto_12

    .line 677
    :cond_11
    nop

    .line 679
    :goto_12
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, p2, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 680
    monitor-exit v0

    return v1

    .line 681
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw p1
.end method

.method setDeviceBroker(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 83
    return-void
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18

    .line 658
    move-object v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 659
    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    :try_start_7
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v9

    .line 660
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v11, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 663
    monitor-exit v8

    return v9

    .line 664
    :catchall_20
    move-exception v0

    monitor-exit v8
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 549
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 550
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 551
    monitor-exit v0

    return-object v1

    .line 552
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method
