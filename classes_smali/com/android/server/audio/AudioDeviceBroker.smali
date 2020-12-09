.class final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    }
.end annotation


# static fields
.field private static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_DISCONNECT_A2DP:I = 0x13

.field private static final MSG_DISCONNECT_A2DP_SINK:I = 0x14

.field private static final MSG_DISCONNECT_BT_HEADSET:I = 0x16

.field private static final MSG_DISCONNECT_BT_HEARING_AID:I = 0x15

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field private static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field private static final MSG_IL_BTA2DP_DOCK_TIMEOUT:I = 0xa

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_CONNECTED:I = 0x1b

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED:I = 0x1c

.field private static final MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE:I = 0x7

.field private static final MSG_IL_SET_HEARING_AID_CONNECTION_STATE:I = 0x8

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_DISCONNECT_BT_SCO:I = 0x10

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE:I = 0x12

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE_EXT:I = 0x20

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_CONNECTION:I = 0x1d

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_DISCONNECTION:I = 0x1e

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP:I = 0x17

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK:I = 0x18

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET:I = 0x1a

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID:I = 0x19

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1f

.field private static final MSG_L_SCOCLIENT_DIED:I = 0x21

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_TOGGLE_HDMI:I = 0x6

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field private static sLastDeviceConnectMsgTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLastDeviceConnectionMsgTimeLock"
        }
    .end annotation
.end field

.field private static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBluetoothA2dpEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation
.end field

.field private mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field private mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field private final mBtHelper:Lcom/android/server/audio/BtHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceStateLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field final mSetModeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 93
    new-instance p1, Lcom/android/server/audio/BtHelper;

    invoke-direct {p1, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 94
    new-instance p1, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 97
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 104
    new-instance p1, Lcom/android/server/audio/BtHelper;

    invoke-direct {p1, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 105
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 107
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$800(I)Z
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private init()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 114
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 115
    return-void
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .registers 2

    .line 963
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1e

    packed-switch p0, :pswitch_data_20

    .line 979
    const/4 p0, 0x0

    return p0

    .line 977
    :cond_1e
    :pswitch_1e  #0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20
    const/4 p0, 0x1

    return p0

    :pswitch_data_20
    .packed-switch 0x1b
        :pswitch_1e  #0000001b
        :pswitch_1e  #0000001c
        :pswitch_1e  #0000001d
        :pswitch_1e  #0000001e
        :pswitch_1e  #0000001f
        :pswitch_1e  #00000020
    .end packed-switch
.end method

.method private onSendBecomingNoisyIntent()V
    .registers 4

    .line 649
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 650
    const-string v2, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method private onSetForceUse(IILjava/lang/String;)V
    .registers 6

    .line 640
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 641
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 643
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 645
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 646
    return-void
.end method

.method private removeAllA2dpConnectionEvents(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 281
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6

    .line 1081
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1082
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1085
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 1087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    nop

    .line 1089
    return-void

    .line 1087
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 11

    .line 1035
    if-nez p2, :cond_8

    .line 1036
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_14

    .line 1037
    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1038
    return-void

    .line 1041
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1044
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 1047
    goto :goto_2e

    .line 1045
    :catch_26
    move-exception p2

    .line 1046
    const-string v2, "AS.AudioDeviceBroker"

    const-string v3, "Exception acquiring wakelock"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    :cond_31
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1052
    :try_start_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 1054
    const/4 p6, 0x2

    if-eq p1, p6, :cond_59

    const/16 p6, 0x12

    if-eq p1, p6, :cond_59

    const/4 p6, 0x7

    if-eq p1, p6, :cond_59

    const/16 p6, 0x8

    if-eq p1, p6, :cond_59

    const/16 p6, 0xa

    if-eq p1, p6, :cond_59

    const/16 p6, 0xb

    if-eq p1, p6, :cond_59

    const/16 p6, 0x1b

    if-eq p1, p6, :cond_59

    const/16 p6, 0x1c

    if-eq p1, p6, :cond_59

    goto :goto_67

    .line 1063
    :cond_59
    sget-wide v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long p6, v2, v0

    if-ltz p6, :cond_64

    .line 1065
    sget-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    .line 1067
    :cond_64
    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1068
    nop

    .line 1073
    :goto_67
    iget-object p6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v2, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p6, p1, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1075
    monitor-exit p2

    .line 1076
    return-void

    .line 1075
    :catchall_74
    move-exception p1

    monitor-exit p2
    :try_end_76
    .catchall {:try_start_34 .. :try_end_76} :catchall_74

    throw p1
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13

    .line 1030
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1031
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .registers 12

    .line 1018
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1019
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .registers 13

    .line 998
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 999
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12

    .line 1022
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1023
    return-void
.end method

.method private sendIMsg(IIII)V
    .registers 12

    .line 1006
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1007
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .registers 11

    .line 1014
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1015
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .registers 12

    .line 1002
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1003
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11

    .line 1026
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1027
    return-void
.end method

.method private sendMsg(III)V
    .registers 11

    .line 994
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 995
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .registers 10

    .line 1010
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1011
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .registers 4

    .line 661
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 662
    const/4 v0, 0x1

    const-string v1, "handleAudioDeviceEvent"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 664
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 665
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 666
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 667
    return-void
.end method

.method private waitForBrokerHandlerCreation()V
    .registers 3

    .line 670
    monitor-enter p0

    .line 671
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_12

    .line 673
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    .line 676
    :goto_8
    goto :goto_1

    .line 674
    :catch_9
    move-exception v0

    .line 675
    :try_start_a
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Interruption while waiting on BrokerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 678
    :cond_12
    monitor-exit p0

    .line 679
    return-void

    .line 678
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method cancelA2dpDockTimeout()V
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 593
    return-void
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 4

    .line 455
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 456
    return-void
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 4

    .line 460
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 461
    return-void
.end method

.method disconnectAllBluetoothProfiles()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 631
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method getBluetoothA2dpEnabled()Z
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 625
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 364
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getDeviceForStream(I)I
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p1

    return p1
.end method

.method getModeOwnerPid()I
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v0

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result p1

    return p1
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 585
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 567
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 569
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method handleFailureToConnectToBtHeadsetService(I)V
    .registers 4

    .line 580
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 581
    return-void
.end method

.method hasAudioFocusUsers()Z
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpDockTimeout()Z
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    .line 606
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v2, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 608
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    .line 606
    :goto_22
    return p1
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 370
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isBluetoothA2dpOn()Z
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 376
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isBluetoothScoOnForApp()Z
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 328
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method isInCommunication()Z
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 217
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method onAudioServerDied()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    const-string/jumbo v2, "on"

    goto :goto_19

    :cond_16
    const-string/jumbo v2, "off"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 140
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v2, "onAudioServerDied"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 141
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v4, "onAudioServerDied"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 142
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3b

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 145
    return-void

    .line 142
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method onSystemReady()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 130
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 131
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 132
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 133
    return-void

    .line 131
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw v2

    .line 132
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 4

    .line 597
    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 598
    return-void
.end method

.method postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 11

    .line 479
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 480
    const/16 v0, 0x1b

    move v2, v0

    goto :goto_a

    .line 481
    :cond_7
    const/16 v0, 0x1c

    move v2, v0

    :goto_a
    const/4 v3, 0x2

    .line 479
    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 484
    return-void
.end method

.method postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 10

    .line 488
    const/4 v1, 0x7

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 490
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 415
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 431
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 392
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 393
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 13

    .line 287
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 289
    const/16 p1, 0x20

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 13

    .line 257
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeAllA2dpConnectionEvents(Landroid/bluetooth/BluetoothDevice;)V

    .line 264
    nop

    .line 265
    const/4 p1, 0x2

    if-ne p2, p1, :cond_15

    .line 266
    const/16 p2, 0x1d

    goto :goto_17

    .line 267
    :cond_15
    const/16 p2, 0x1e

    :goto_17
    nop

    .line 264
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 13

    .line 313
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 315
    const/16 p1, 0x1f

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method postBroadcastBecomingNoisy()V
    .registers 3

    .line 474
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 475
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .registers 4

    .line 470
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 471
    return-void
.end method

.method postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .registers 4

    .line 523
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 4

    .line 527
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 528
    return-void
.end method

.method postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 4

    .line 535
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 4

    .line 531
    const/16 v0, 0x1a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method postDisconnectA2dp()V
    .registers 3

    .line 507
    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 508
    return-void
.end method

.method postDisconnectA2dpSink()V
    .registers 3

    .line 511
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 512
    return-void
.end method

.method postDisconnectBluetoothSco(I)V
    .registers 4

    .line 388
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 389
    return-void
.end method

.method postDisconnectHeadset()V
    .registers 3

    .line 519
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 520
    return-void
.end method

.method postDisconnectHearingAid()V
    .registers 3

    .line 515
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 516
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 440
    return-void
.end method

.method postReportNewRoutes()V
    .registers 3

    .line 588
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 589
    return-void
.end method

.method postScoClientDied(Ljava/lang/Object;)V
    .registers 4

    .line 540
    const/16 v0, 0x21

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 5

    .line 574
    const/4 v0, 0x2

    .line 575
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4

    .line 380
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 381
    return-void
.end method

.method postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .registers 10

    .line 500
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 504
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .registers 5

    .line 384
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 385
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 6

    .line 435
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 436
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4

    .line 494
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 495
    return-void
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 171
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 172
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 173
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 174
    return-void

    .line 172
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw p1

    .line 173
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw p1
.end method

.method setA2dpDockTimeout(Ljava/lang/String;II)V
    .registers 10

    .line 613
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 614
    return-void
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .registers 5

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 555
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_32
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 557
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 558
    const/4 p1, 0x1

    .line 560
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    goto :goto_43

    :cond_41
    const/16 v1, 0xa

    .line 558
    :goto_43
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 11

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_9

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 182
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 183
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 185
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 p1, 0xa

    :goto_1c
    move v6, p1

    .line 183
    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 15

    .line 333
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    const/4 v1, 0x3

    if-eqz p1, :cond_15

    .line 336
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_12

    .line 337
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 338
    monitor-exit v0

    return-void

    .line 340
    :cond_12
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_1c

    .line 341
    :cond_15
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v2, v1, :cond_1c

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 344
    :cond_1c
    :goto_1c
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_30

    const-string/jumbo p1, "on"

    goto :goto_33

    :cond_30
    const-string/jumbo p1, "off"

    :goto_33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 346
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 348
    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v6, p0

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 350
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_58

    .line 352
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 353
    return-void

    .line 350
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method setBluetoothScoOnByApp(Z)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    :try_start_8
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw p1
.end method

.method setForceUse_Async(IILjava/lang/String;)V
    .registers 10

    .line 148
    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method setSpeakerphoneOn(ZLjava/lang/String;)Z
    .registers 8

    .line 197
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v1

    .line 199
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    .line 200
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v4, 0x3

    if-ne p1, v4, :cond_14

    .line 201
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 203
    :cond_14
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_1d

    .line 204
    :cond_17
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne p1, v2, :cond_1d

    .line 205
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 208
    :cond_1d
    :goto_1d
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 209
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result p1

    if-eq v1, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    monitor-exit v0

    return v2

    .line 211
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 224
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/BtHelper;->startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 400
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 4

    .line 356
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 358
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method toggleHdmiIfConnected_Async()V
    .registers 3

    .line 153
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 154
    return-void
.end method
