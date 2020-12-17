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

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE:I = 0x6

.field private static final MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE:I = 0x7

.field private static final MSG_IL_SET_HEARING_AID_CONNECTION_STATE:I = 0x8

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_DISCONNECT_BT_SCO:I = 0x10

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE:I = 0x12

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE_EXT:I = 0x1d

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1b

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP:I = 0x17

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK:I = 0x18

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET:I = 0x1a

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID:I = 0x19

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1c

.field private static final MSG_L_SCOCLIENT_DIED:I = 0x1e

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_TOGGLE_HDMI:I = 0x11

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

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "service"  # Lcom/android/server/audio/AudioService;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 101
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 104
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"  # Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 51
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioDeviceBroker;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"  # I

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$800(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 51
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioDeviceBroker;

    .line 51
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .registers 2
    .param p0, "msgId"  # I

    .line 1022
    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x6

    if-eq p0, v0, :cond_22

    const/4 v0, 0x7

    if-eq p0, v0, :cond_22

    const/16 v0, 0x8

    if-eq p0, v0, :cond_22

    const/16 v0, 0xa

    if-eq p0, v0, :cond_22

    const/16 v0, 0xb

    if-eq p0, v0, :cond_22

    const/16 v0, 0x11

    if-eq p0, v0, :cond_22

    const/16 v0, 0x12

    if-eq p0, v0, :cond_22

    packed-switch p0, :pswitch_data_24

    .line 1036
    const/4 v0, 0x0

    return v0

    .line 1034
    :cond_22
    :pswitch_22  #0x1b, 0x1c, 0x1d
    const/4 v0, 0x1

    return v0

    :pswitch_data_24
    .packed-switch 0x1b
        :pswitch_22  #0000001b
        :pswitch_22  #0000001c
        :pswitch_22  #0000001d
    .end packed-switch
.end method

.method private onSendBecomingNoisyIntent(I)V
    .registers 4
    .param p1, "isHeadset"  # I

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "isHeadset"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 711
    return-void
.end method

.method private onSetForceUse(IILjava/lang/String;)V
    .registers 6
    .param p1, "useCase"  # I
    .param p2, "config"  # I
    .param p3, "eventSource"  # Ljava/lang/String;

    .line 693
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 694
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes()V

    .line 696
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 698
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 699
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 1137
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1138
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1141
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 1143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    nop

    .line 1145
    return-void

    .line 1143
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 14
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg1"  # I
    .param p4, "arg2"  # I
    .param p5, "obj"  # Ljava/lang/Object;
    .param p6, "delay"  # I

    .line 1092
    if-nez p2, :cond_8

    .line 1093
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_14

    .line 1094
    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1095
    return-void

    .line 1098
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1099
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1101
    .local v0, "identity":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 1104
    goto :goto_2e

    .line 1102
    :catch_26
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    .end local v0  # "identity":J
    :cond_31
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 1111
    .local v1, "time":J
    const/4 v3, 0x2

    if-eq p1, v3, :cond_54

    const/16 v3, 0x12

    if-eq p1, v3, :cond_54

    const/4 v3, 0x6

    if-eq p1, v3, :cond_54

    const/4 v3, 0x7

    if-eq p1, v3, :cond_54

    const/16 v3, 0x8

    if-eq p1, v3, :cond_54

    const/16 v3, 0xa

    if-eq p1, v3, :cond_54

    const/16 v3, 0xb

    if-eq p1, v3, :cond_54

    goto :goto_63

    .line 1119
    :cond_54
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_60

    .line 1121
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    move-wide v1, v3

    .line 1123
    :cond_60
    sput-wide v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1124
    nop

    .line 1129
    :goto_63
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1131
    nop

    .end local v1  # "time":J
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_34 .. :try_end_73} :catchall_71

    throw v1
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg1"  # I
    .param p4, "arg2"  # I
    .param p5, "obj"  # Ljava/lang/Object;

    .line 1087
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1088
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .registers 12
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg1"  # I
    .param p4, "arg2"  # I

    .line 1075
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1076
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .registers 13
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg"  # I
    .param p4, "obj"  # Ljava/lang/Object;
    .param p5, "delay"  # I

    .line 1055
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1056
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg"  # I
    .param p4, "obj"  # Ljava/lang/Object;

    .line 1079
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1080
    return-void
.end method

.method private sendIMsg(IIII)V
    .registers 12
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg"  # I
    .param p4, "delay"  # I

    .line 1063
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1064
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .registers 11
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg"  # I

    .line 1071
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1072
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .registers 12
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "obj"  # Ljava/lang/Object;
    .param p4, "delay"  # I

    .line 1059
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1060
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "obj"  # Ljava/lang/Object;

    .line 1083
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1084
    return-void
.end method

.method private sendMsg(III)V
    .registers 11
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "delay"  # I

    .line 1051
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1052
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .registers 10
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I

    .line 1067
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1068
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctxt"  # Landroid/content/Context;

    .line 721
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 722
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleAudioDeviceEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 724
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 725
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 726
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 727
    return-void
.end method

.method private waitForBrokerHandlerCreation()V
    .registers 4

    .line 730
    monitor-enter p0

    .line 731
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_13

    .line 733
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 736
    goto :goto_1

    .line 734
    :catch_9
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    nop

    .end local v0  # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 738
    :cond_13
    monitor-exit p0

    .line 739
    return-void

    .line 738
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method MzIsHifiOutDeviceConnected()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->MzIsHifiOutDeviceConnected()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 224
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method cancelA2dpDockTimeout()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 648
    return-void
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 4
    .param p1, "deviceType"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 491
    return-void
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 4
    .param p1, "state"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 496
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

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 219
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;)V

    .line 220
    return-void
.end method

.method getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;

    .line 682
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 684
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getAudioService()Lcom/android/server/audio/AudioService;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method getBluetoothA2dpEnabled()Z
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 678
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 395
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getDeviceForStream(I)I
    .registers 3
    .param p1, "streamType"  # I

    .line 461
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getForcedUseForComm()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    return v0
.end method

.method getModeOwnerPid()I
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v0

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .registers 4
    .param p1, "streamType"  # I
    .param p2, "device"  # I

    .line 453
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    return v0
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 640
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "connect"  # Z
    .param p2, "device"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "deviceName"  # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 605
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method handleFailureToConnectToBtHeadsetService(I)V
    .registers 4
    .param p1, "delay"  # I

    .line 635
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 636
    return-void
.end method

.method handleSetA2dpSinkConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 13
    .param p1, "state"  # I
    .param p2, "btDeviceInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceStateLock"
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 612
    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    move v1, v0

    .line 613
    .local v1, "intState":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    .line 616
    .local v0, "delay":I
    if-nez p2, :cond_15

    const-string/jumbo v2, "null"

    goto :goto_1d

    :cond_15
    invoke-virtual {p2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "addr":Ljava/lang/String;
    :goto_1d
    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 625
    return-void
.end method

.method hasAudioFocusUsers()Z
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpDockTimeout()Z
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "btDevice"  # Landroid/bluetooth/BluetoothDevice;

    .line 661
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 401
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isBluetoothA2dpOn()Z
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 407
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isBluetoothScoOnForApp()Z
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In isBluetoothScoOnForApp(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    monitor-exit v0

    return v1

    .line 349
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method isInCommunication()Z
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In isSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    monitor-exit v0

    return v2

    .line 252
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public mzSwitchBluetoothToDevice(I)V
    .registers 16
    .param p1, "device"  # I

    .line 231
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 233
    const/4 v1, 0x1

    :try_start_7
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_d

    .line 235
    :cond_a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 238
    :goto_d
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 240
    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x2

    iget v12, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method onAudioServerDied()V
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
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
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 145
    return-void

    .line 142
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method onSystemReady()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 132
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 133
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 134
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 135
    return-void

    .line 133
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :try_start_10
    throw v2

    .line 134
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 4
    .param p1, "btDeviceInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 652
    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 653
    return-void
.end method

.method postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "btDeviceInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"  # I

    .line 518
    const/4 v1, 0x6

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 520
    return-void
.end method

.method postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "btDeviceInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"  # I

    .line 524
    const/4 v1, 0x7

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 526
    return-void
.end method

.method postAccessoryPlugMediaMute(I)V
    .registers 3
    .param p1, "device"  # I

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaMute(I)V

    .line 450
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .registers 3
    .param p1, "device"  # I

    .line 445
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 446
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 5
    .param p1, "streamType"  # I
    .param p2, "device"  # I
    .param p3, "caller"  # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 466
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;

    .line 423
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 13
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "a2dpVolume"  # I

    .line 297
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 299
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    const/16 v1, 0x1d

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 13
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "a2dpVolume"  # I

    .line 285
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 290
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    const/16 v1, 0x1b

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 13
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "suppressNoisyIntent"  # Z
    .param p4, "musicDevice"  # I
    .param p5, "eventSource"  # Ljava/lang/String;

    .line 323
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 325
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 326
    return-void
.end method

.method postBroadcastBecomingNoisy(I)V
    .registers 4
    .param p1, "isHeadSet"  # I

    .line 512
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 513
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 505
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 506
    return-void
.end method

.method postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .registers 4
    .param p1, "a2dpProfile"  # Landroid/bluetooth/BluetoothA2dp;

    .line 559
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 560
    return-void
.end method

.method postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"  # Landroid/bluetooth/BluetoothProfile;

    .line 563
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 564
    return-void
.end method

.method postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 4
    .param p1, "hearingAidProfile"  # Landroid/bluetooth/BluetoothHearingAid;

    .line 571
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 573
    return-void
.end method

.method postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 4
    .param p1, "headsetProfile"  # Landroid/bluetooth/BluetoothHeadset;

    .line 567
    const/16 v0, 0x1a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method postDisconnectA2dp()V
    .registers 3

    .line 543
    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 544
    return-void
.end method

.method postDisconnectA2dpSink()V
    .registers 3

    .line 547
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 548
    return-void
.end method

.method postDisconnectBluetoothSco(I)V
    .registers 4
    .param p1, "exceptPid"  # I

    .line 419
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 420
    return-void
.end method

.method postDisconnectHeadset()V
    .registers 3

    .line 555
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 556
    return-void
.end method

.method postDisconnectHearingAid()V
    .registers 3

    .line 551
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 552
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 475
    return-void
.end method

.method postReportNewRoutes()V
    .registers 3

    .line 643
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 644
    return-void
.end method

.method postScoClientDied(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"  # Ljava/lang/Object;

    .line 576
    const/16 v0, 0x1e

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 6
    .param p1, "state"  # I
    .param p2, "btDeviceInfo"  # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 629
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 630
    .local v1, "intState":I
    :goto_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 632
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4
    .param p1, "index"  # I

    .line 411
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 412
    return-void
.end method

.method postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"  # I

    .line 536
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 540
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .registers 5
    .param p1, "index"  # I
    .param p2, "streamType"  # I

    .line 415
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 416
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 6
    .param p1, "streamType"  # I
    .param p2, "vssVolIndex"  # I
    .param p3, "device"  # I
    .param p4, "caller"  # Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 471
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4
    .param p1, "connectionState"  # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
    .param p2, "delay"  # I

    .line 530
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 531
    return-void
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"  # Landroid/content/Intent;

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
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .end local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1  # "intent":Landroid/content/Intent;
    :try_start_10
    throw v2

    .line 173
    .restart local p0  # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1  # "intent":Landroid/content/Intent;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method setA2dpDockTimeout(Ljava/lang/String;II)V
    .registers 10
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "a2dpCodec"  # I
    .param p3, "delayMs"  # I

    .line 666
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 667
    return-void
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 4
    .param p1, "supported"  # Z

    .line 670
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 672
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .registers 7
    .param p1, "on"  # Z
    .param p2, "source"  # Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 592
    :try_start_32
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 593
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 594
    const/4 v2, 0x1

    .line 596
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    goto :goto_43

    :cond_41
    const/16 v3, 0xa

    .line 594
    :goto_43
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;)V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"  # Z
    .param p2, "source"  # Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 183
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 v1, 0xa

    :goto_1c
    move v7, v1

    .line 183
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 16
    .param p1, "on"  # Z
    .param p2, "eventSource"  # Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothScoOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    const/4 v1, 0x3

    if-eqz p1, :cond_44

    .line 359
    :try_start_25
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_41

    .line 360
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 361
    const-string v2, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "setBluetoothScoOn(true) failed because device is not in audio connected mode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 364
    monitor-exit v0

    return-void

    .line 367
    :cond_41
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_4b

    .line 368
    :cond_44
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v2, v1, :cond_4b

    .line 369
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 371
    :cond_4b
    :goto_4b
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 373
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setbluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_77

    const-string/jumbo v2, "on"

    goto :goto_7a

    :cond_77
    const-string/jumbo v2, "off"

    :goto_7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 377
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 379
    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v7, p0

    move-object v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 381
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_25 .. :try_end_99} :catchall_9f

    .line 383
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 384
    return-void

    .line 381
    :catchall_9f
    move-exception v1

    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method setBluetoothScoOnByApp(Z)V
    .registers 6
    .param p1, "on"  # Z

    .line 330
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    const/4 v1, 0x3

    if-eqz p1, :cond_9

    .line 332
    :try_start_6
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    goto :goto_10

    .line 333
    :cond_9
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-ne v2, v1, :cond_10

    .line 334
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 336
    :cond_10
    :goto_10
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setBluetoothScoOnByApp(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method setForceUse_Async(IILjava/lang/String;)V
    .registers 10
    .param p1, "useCase"  # I
    .param p2, "config"  # I
    .param p3, "eventSource"  # Ljava/lang/String;

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
    .registers 10
    .param p1, "on"  # Z
    .param p2, "eventSource"  # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v1

    .line 199
    .local v1, "wasOn":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    .line 200
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_14

    .line 201
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 203
    :cond_14
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_1d

    .line 204
    :cond_17
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v4, v2, :cond_1d

    .line 205
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 208
    :cond_1d
    :goto_1d
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 210
    const-string v4, "AS.AudioDeviceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In setSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v4

    if-eq v1, v4, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :goto_46
    monitor-exit v0

    return v2

    .line 214
    .end local v1  # "wasOn":Z
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "type"  # I
    .param p2, "state"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6
    .param p1, "cb"  # Landroid/os/IBinder;
    .param p2, "scoAudioMode"  # I
    .param p3, "eventSource"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/BtHelper;->startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 4
    .param p1, "observer"  # Landroid/media/IAudioRoutesObserver;

    .line 387
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 389
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "cb"  # Landroid/os/IBinder;
    .param p2, "eventSource"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSetModeLock"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 438
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method toggleHdmiIfConnected_Async()V
    .registers 3

    .line 153
    const/16 v0, 0x11

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 154
    return-void
.end method
