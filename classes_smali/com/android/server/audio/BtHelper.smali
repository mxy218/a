.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/BtHelper$ScoClient;,
        Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    }
.end annotation


# static fields
.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field static final EVENT_ACTIVE_DEVICE_CHANGE:I = 0x1

.field static final EVENT_DEVICE_CONFIG_CHANGE:I = 0x0

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field static final SCO_MODE_UNDEFINED:I = -0x1

.field static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.BtHelper"

.field private static mA2dp:Landroid/bluetooth/BluetoothA2dp;


# instance fields
.field private mAvrcpAbsVolSupported:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/BtHelper$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 617
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 57
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 58
    return-void
.end method

.method static a2dpDeviceEventToString(I)Ljava/lang/String;
    .registers 4

    .line 155
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 159
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 157
    :cond_1c
    const-string p0, "ACTIVE_DEVICE_CHANGE"

    return-object p0

    .line 156
    :cond_1f
    const-string p0, "DEVICE_CONFIG_CHANGE"

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 3

    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/audio/BtHelper;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/BtHelper;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/audio/BtHelper;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/server/audio/BtHelper;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/BtHelper;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/audio/BtHelper;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/audio/BtHelper;)Z
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 3

    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method private broadcastScoConnectionState(I)V
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    .line 546
    return-void
.end method

.method private checkScoAudioState()V
    .registers 4

    .line 958
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_17

    .line 961
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    .line 963
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 965
    :cond_17
    return-void
.end method

.method private clearAllScoClients(IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 986
    nop

    .line 987
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 988
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper$ScoClient;->getPid()I

    move-result v3

    if-eq v3, p1, :cond_1e

    .line 989
    invoke-virtual {v2, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->clearCount(Z)V

    goto :goto_1f

    .line 991
    :cond_1e
    move-object v1, v2

    .line 993
    :goto_1f
    goto :goto_8

    .line 994
    :cond_20
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 995
    if-eqz v1, :cond_2c

    .line 996
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_2c
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    .line 945
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    .line 953
    const/4 p0, 0x0

    return p0

    .line 951
    :cond_a
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 947
    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result p0

    return p0

    .line 949
    :cond_14
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    .line 931
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    .line 939
    const/4 p0, 0x0

    return p0

    .line 937
    :cond_a
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 933
    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result p0

    return p0

    .line 935
    :cond_14
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method private getBluetoothHeadset()Z
    .registers 6

    .line 1001
    nop

    .line 1002
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1003
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1004
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    goto :goto_17

    .line 1003
    :cond_16
    move v0, v1

    .line 1011
    :goto_17
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1012
    if-eqz v0, :cond_1d

    const/16 v1, 0xbb8

    .line 1011
    :cond_1d
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    .line 1013
    return v0
.end method

.method static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 1

    .line 164
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 165
    if-nez p0, :cond_9

    .line 166
    const-string p0, ""

    return-object p0

    .line 168
    :cond_9
    return-object p0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;
    .registers 6

    .line 969
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 970
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_19

    .line 971
    return-object v1

    .line 973
    :cond_19
    goto :goto_6

    .line 974
    :cond_1a
    if-eqz p2, :cond_27

    .line 975
    new-instance p2, Lcom/android/server/audio/BtHelper$ScoClient;

    invoke-direct {p2, p0, p1}, Lcom/android/server/audio/BtHelper$ScoClient;-><init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V

    .line 976
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    return-object p2

    .line 979
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 13

    .line 549
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 550
    return v0

    .line 552
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 554
    const v3, -0x7ffffff8

    .line 555
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6e

    .line 560
    const/4 v5, 0x0

    if-eqz v2, :cond_36

    .line 561
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v6, 0x404

    if-eq v2, v6, :cond_30

    const/16 v6, 0x408

    if-eq v2, v6, :cond_30

    const/16 v6, 0x420

    if-eq v2, v6, :cond_29

    goto :goto_36

    .line 567
    :cond_29
    new-array v4, v0, [I

    const/16 v2, 0x40

    aput v2, v4, v5

    goto :goto_36

    .line 564
    :cond_30
    new-array v4, v0, [I

    const/16 v2, 0x20

    aput v2, v4, v5

    .line 571
    :cond_36
    :goto_36
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 572
    const-string v1, ""

    .line 574
    :cond_3e
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 575
    nop

    .line 576
    if-eqz p2, :cond_4f

    .line 577
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    aget v4, v4, v5

    invoke-virtual {v2, p2, v4, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v2, v5

    goto :goto_61

    .line 580
    :cond_4f
    array-length v2, v4

    move v6, v5

    move v7, v6

    :goto_52
    if-ge v6, v2, :cond_60

    aget v8, v4, v6

    .line 581
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v9, p2, v8, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 580
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_60
    move v2, v7

    .line 586
    :goto_61
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, p2, v3, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    if-eqz v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v5

    .line 588
    :goto_6d
    return v0

    :array_6e
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method static isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .registers 5

    .line 173
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    if-eqz p0, :cond_43

    if-eqz v0, :cond_43

    .line 176
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_43

    .line 179
    :cond_14
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 180
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 181
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 182
    sget-object p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 p1, 0x2

    const-string v0, "AS.BtHelper"

    if-eq p0, p1, :cond_3b

    .line 183
    const-string p0, "Active earbud is already disconnected"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v1

    .line 186
    :cond_3b
    const-string p0, "isTwsPlusSwitch true"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 p0, 0x1

    return p0

    .line 189
    :cond_42
    return v1

    .line 177
    :cond_43
    :goto_43
    return v1
.end method

.method private mapBluetoothCodecToAudioFormat(I)I
    .registers 2

    .line 1017
    packed-switch p1, :pswitch_data_1e

    .line 1035
    :pswitch_3  #0x7
    const/4 p1, 0x0

    return p1

    .line 1029
    :pswitch_5  #0x8
    const/high16 p1, 0x26000000

    return p1

    .line 1033
    :pswitch_8  #0x6
    const/high16 p1, 0x2a000000

    return p1

    .line 1027
    :pswitch_b  #0x5
    const/high16 p1, 0x23000000

    return p1

    .line 1031
    :pswitch_e  #0x4
    const/high16 p1, 0x27000000

    return p1

    .line 1025
    :pswitch_11  #0x3
    const/high16 p1, 0x21000000

    return p1

    .line 1023
    :pswitch_14  #0x2
    const/high16 p1, 0x20000000

    return p1

    .line 1021
    :pswitch_17  #0x1
    const/high16 p1, 0x4000000

    return p1

    .line 1019
    :pswitch_1a  #0x0
    const/high16 p1, 0x1f000000

    return p1

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
        :pswitch_3  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6

    .line 920
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 923
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    nop

    .line 927
    return-void

    .line 925
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 597
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 598
    return-void

    .line 600
    :cond_2a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_46

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_46
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    if-nez v0, :cond_63

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 p1, 0x0

    .line 609
    :cond_63
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 610
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_6c

    .line 611
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 613
    :cond_6c
    return-void
.end method


# virtual methods
.method declared-synchronized disconnectAllBluetoothProfiles()V
    .registers 2

    monitor-enter p0

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dp()V

    .line 441
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectA2dpSink()V

    .line 442
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHeadset()V

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectHearingAid()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 444
    monitor-exit p0

    return-void

    .line 439
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectBluetoothSco(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 360
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 361
    monitor-exit p0

    return-void

    .line 363
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 364
    monitor-exit p0

    return-void

    .line 358
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized disconnectHeadset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 459
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 460
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 461
    monitor-exit p0

    return-void

    .line 458
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    monitor-enter p0

    .line 254
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 255
    monitor-exit p0

    return v1

    .line 257
    :cond_8
    :try_start_8
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_24

    .line 258
    if-nez p1, :cond_12

    .line 259
    monitor-exit p0

    return v1

    .line 261
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_24

    .line 262
    if-nez p1, :cond_1a

    .line 263
    monitor-exit p0

    return v1

    .line 265
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->mapBluetoothCodecToAudioFormat(I)I

    move-result p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_24

    monitor-exit p0

    return p1

    .line 253
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isAvrcpAbsoluteVolumeSupported()Z
    .registers 2

    monitor-enter p0

    .line 224
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isBluetoothScoOn()Z
    .registers 4

    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 341
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_31

    .line 343
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothScoOn(true) returning false because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not in audio connected mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_34

    .line 345
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 347
    :cond_31
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 339
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .registers 8

    monitor-enter p0

    .line 464
    :try_start_1
    sput-object p1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 465
    sget-object p1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 466
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_25

    if-eqz v0, :cond_11

    .line 467
    monitor-exit p0

    return-void

    .line 469
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 471
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_25

    .line 473
    monitor-exit p0

    return-void

    .line 463
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 5

    monitor-enter p0

    .line 476
    :try_start_1
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    if-eqz v1, :cond_d

    .line 478
    monitor-exit p0

    return-void

    .line 480
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 481
    nop

    .line 482
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 483
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v2, v0}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_25

    .line 485
    monitor-exit p0

    return-void

    .line 475
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onAudioServerDiedRestoreA2dp()V
    .registers 5

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    const/16 v0, 0xa

    .line 220
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const-string/jumbo v3, "onAudioServerDied()"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 221
    monitor-exit p0

    return-void

    .line 217
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBroadcastScoConnectionState(I)V
    .registers 5

    monitor-enter p0

    .line 428
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-ne p1, v0, :cond_7

    .line 429
    monitor-exit p0

    return-void

    .line 431
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 436
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    .line 437
    monitor-exit p0

    return-void

    .line 427
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 508
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 509
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 511
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 512
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_57

    if-eq p1, v0, :cond_20

    .line 514
    monitor-exit p0

    return-void

    .line 516
    :cond_20
    nop

    .line 517
    :try_start_21
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    if-eqz p1, :cond_4d

    .line 518
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v1, :cond_3d

    if-eq p1, v0, :cond_2d

    goto :goto_4d

    .line 528
    :cond_2d
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v0, v1}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    .line 531
    if-eqz p1, :cond_4e

    .line 532
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4e

    .line 520
    :cond_3d
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v0, v1}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    .line 523
    if-eqz p1, :cond_4e

    .line 524
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4e

    .line 537
    :cond_4d
    :goto_4d
    move p1, v2

    :cond_4e
    :goto_4e
    if-nez p1, :cond_55

    .line 538
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 539
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_55
    .catchall {:try_start_21 .. :try_end_55} :catchall_57

    .line 541
    :cond_55
    monitor-exit p0

    return-void

    .line 506
    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 8

    monitor-enter p0

    .line 488
    :try_start_1
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 489
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 490
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2a

    if-eqz v0, :cond_11

    .line 491
    monitor-exit p0

    return-void

    .line 493
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 494
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 495
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 496
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "mBluetoothProfileServiceListener"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2a

    .line 501
    monitor-exit p0

    return-void

    .line 487
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onSystemReady()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 197
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 208
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_39

    .line 210
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    .line 215
    :cond_39
    monitor-exit p0

    return-void

    .line 196
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 273
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_b7

    .line 275
    :cond_1a
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 276
    nop

    .line 277
    nop

    .line 278
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v0, v3, :cond_48

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v0, v4, :cond_48

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v0, v2, :cond_48

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_4a

    .line 285
    :cond_48
    move v0, v4

    goto :goto_4b

    .line 287
    :cond_4a
    move v0, v5

    :goto_4b
    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_be

    .line 321
    move v0, v5

    goto :goto_a2

    .line 289
    :pswitch_51  #0xc
    nop

    .line 290
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v3, :cond_5c

    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v2, :cond_5c

    .line 292
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 294
    :cond_5c
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v1, "BtHelper.receiveBtEvent"

    invoke-virtual {p1, v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 295
    move v1, v4

    goto :goto_a2

    .line 314
    :pswitch_65  #0xb
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v3, :cond_a2

    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v2, :cond_a2

    .line 316
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_a2

    .line 297
    :pswitch_70  #0xa
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v1, "BtHelper.receiveBtEvent"

    invoke-virtual {p1, v5, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 298
    nop

    .line 300
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v4, :cond_96

    .line 301
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 302
    invoke-static {p1, v1, v2}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 304
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 305
    nop

    .line 306
    move v0, v5

    move v1, v0

    goto :goto_a2

    .line 310
    :cond_96
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v3, :cond_9b

    goto :goto_9c

    :cond_9b
    move v4, v5

    :goto_9c
    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 311
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 312
    move v1, v5

    .line 324
    :cond_a2
    :goto_a2
    if-eqz v0, :cond_b8

    .line 325
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 328
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_b6
    .catchall {:try_start_1 .. :try_end_b6} :catchall_ba

    goto :goto_b8

    .line 275
    :cond_b7
    :goto_b7
    nop

    .line 333
    :cond_b8
    :goto_b8
    monitor-exit p0

    return-void

    .line 270
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_be
    .packed-switch 0xa
        :pswitch_70  #0000000a
        :pswitch_65  #0000000b
        :pswitch_51  #0000000c
    .end packed-switch
.end method

.method declared-synchronized resetBluetoothSco()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 449
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0, v0}, Lcom/android/server/audio/BtHelper;->clearAllScoClients(IZ)V

    .line 450
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 451
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 452
    const-string v1, "A2dpSuspended=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "resetBluetoothSco"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 454
    monitor-exit p0

    return-void

    .line 448
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized scoClientDied(Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_1
    check-cast p1, Lcom/android/server/audio/BtHelper$ScoClient;

    .line 679
    const-string v0, "AS.BtHelper"

    const-string v1, "SCO client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 681
    if-gez v0, :cond_1b

    .line 682
    const-string p1, "AS.BtHelper"

    const-string/jumbo v0, "unregistered SCO client died"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 684
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/audio/BtHelper$ScoClient;->clearCount(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 687
    :goto_24
    monitor-exit p0

    return-void

    .line 677
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .registers 5

    monitor-enter p0

    .line 233
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 240
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_1c

    .line 241
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2e

    .line 243
    monitor-exit p0

    return-void

    .line 248
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 250
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2e

    .line 251
    monitor-exit p0

    return-void

    .line 232
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 5

    monitor-enter p0

    .line 228
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 229
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 230
    monitor-exit p0

    return-void

    .line 227
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHearingAidVolume(II)V
    .registers 6

    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-nez v0, :cond_7

    .line 410
    monitor-exit p0

    return-void

    .line 413
    :cond_7
    :try_start_7
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p2

    float-to-int p2, p2

    .line 415
    const/16 v0, -0x80

    if-ge p2, v0, :cond_15

    .line 416
    move p2, v0

    .line 422
    :cond_15
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 424
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_27

    .line 425
    monitor-exit p0

    return-void

    .line 405
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 370
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object p1

    .line 376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_3d

    .line 378
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " client count before="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 379
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v3, p3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 380
    invoke-virtual {p1, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->incCount(I)V
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_2f} :catch_30
    .catchall {:try_start_a .. :try_end_2f} :catchall_3d

    .line 383
    goto :goto_38

    .line 381
    :catch_30
    move-exception p1

    .line 382
    :try_start_31
    const-string p2, "AS.BtHelper"

    const-string p3, "Null ScoClient"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3d

    .line 385
    monitor-exit p0

    return-void

    .line 369
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 391
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/BtHelper$ScoClient;

    move-result-object p1

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 396
    if-eqz p1, :cond_31

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " client count before="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$ScoClient;->getCount()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 398
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v3, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 399
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$ScoClient;->decCount()V

    .line 401
    :cond_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_36

    .line 402
    monitor-exit p0

    return-void

    .line 390
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method
