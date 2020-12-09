.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    .line 132
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;)V

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 49
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private hasService()Z
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 128
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 129
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 127
    :goto_16
    return v1
.end method

.method private isCdma()Z
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private notePhoneDataConnectionState()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_5

    .line 83
    return-void

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    move v0, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v3

    .line 87
    :goto_17
    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 88
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    nop

    .line 90
    :goto_2d
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 94
    :try_start_33
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 95
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 94
    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZI)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3e} :catch_3f

    .line 98
    goto :goto_47

    .line 96
    :catch_3f
    move-exception v0

    .line 97
    const-string v1, "DataConnectionStats"

    const-string v2, "Error noting data connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_47
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 4

    .line 102
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 104
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_54

    .line 105
    :cond_14
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 106
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_54

    .line 107
    :cond_21
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 108
    nop

    .line 109
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    const-string v0, "PIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 111
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_4f

    .line 112
    :cond_3e
    const-string v0, "PUK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 113
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_4f

    .line 115
    :cond_4b
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 117
    :goto_4f
    goto :goto_54

    .line 118
    :cond_50
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 120
    :goto_54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 74
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    goto :goto_26

    .line 75
    :cond_13
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 76
    const-string p2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 77
    :cond_23
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 79
    :cond_26
    :goto_26
    return-void
.end method

.method public startMonitoring()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 55
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 56
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method
