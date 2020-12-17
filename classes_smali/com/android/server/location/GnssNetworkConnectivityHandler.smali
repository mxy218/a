.class Lcom/android/server/location/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;,
        Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final AGNSS_NET_CAPABILITY_NOT_METERED:I = 0x1

.field private static final AGNSS_NET_CAPABILITY_NOT_ROAMING:I = 0x2

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field public static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_EIMS:I = 0x3

.field private static final AGPS_TYPE_IMS:I = 0x4

.field public static final AGPS_TYPE_SUPL:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final DEBUG:Z

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS:I = 0x5

.field private static final SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private mAGpsType:I

.field private mActiveSubId:I

.field private mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    .line 56
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "gnssNetworkListener"  # Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "niHandler"  # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 226
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 186
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 189
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 190
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_2a

    .line 191
    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 194
    :cond_2a
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 195
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 198
    iput-object p4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 199
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 200
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssNetworkConnectivityHandler;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 52
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"  # I

    .line 52
    iput p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 52
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"  # Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 52
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 52
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"  # Landroid/net/Network;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Landroid/net/NetworkCapabilities;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"  # Landroid/net/Network;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .param p1, "x1"  # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 3

    .line 655
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 659
    :cond_23
    const-string v0, "OPEN"

    return-object v0

    .line 661
    :cond_26
    const-string v0, "OPENING"

    return-object v0

    .line 657
    :cond_29
    const-string v0, "CLOSED"

    return-object v0
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "agpsDataConnStatus"  # I

    .line 671
    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    const/4 v0, 0x5

    if-eq p1, v0, :cond_26

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 677
    :cond_26
    const-string v0, "FAILED"

    return-object v0

    .line 675
    :cond_29
    const-string v0, "DONE"

    return-object v0

    .line 673
    :cond_2c
    const-string v0, "CONNECTED"

    return-object v0

    .line 679
    :cond_2f
    const-string v0, "RELEASE"

    return-object v0

    .line 681
    :cond_32
    const-string v0, "REQUEST"

    return-object v0
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "agpsType"  # I

    .line 688
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 696
    :cond_23
    const-string v0, "IMS"

    return-object v0

    .line 694
    :cond_26
    const-string v0, "EIMS"

    return-object v0

    .line 692
    :cond_29
    const-string v0, "C2K"

    return-object v0

    .line 690
    :cond_2c
    const-string v0, "SUPL"

    return-object v0
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 333
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 385
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .line 645
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 646
    return-void

    .line 648
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 19
    .param p1, "apn"  # Ljava/lang/String;

    .line 703
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 704
    const/4 v0, 0x0

    if-nez v2, :cond_d

    .line 705
    return v0

    .line 707
    :cond_d
    iget-object v4, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 708
    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 709
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .line 710
    .local v5, "serviceState":Landroid/telephony/ServiceState;
    const/4 v6, 0x0

    .line 711
    .local v6, "projection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 715
    .local v7, "selection":Ljava/lang/String;
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 716
    const-string/jumbo v6, "roaming_protocol"

    goto :goto_2d

    .line 718
    :cond_2a
    const-string/jumbo v6, "protocol"

    .line 721
    :goto_2d
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez v8, :cond_45

    iget v8, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    if-ne v9, v8, :cond_45

    .line 723
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string/jumbo v11, "type like \'%%emergency%%\' and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4f

    .line 726
    :cond_45
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v11, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 728
    :goto_4f
    :try_start_4f
    iget-object v8, v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v13, v10, [Ljava/lang/String;

    aput-object v6, v13, v0

    const/4 v15, 0x0

    const-string/jumbo v16, "name ASC"

    move-object v14, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_64} :catch_a4

    .line 734
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_7b

    :try_start_66
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 735
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_78

    .line 739
    :try_start_74
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_a4

    .line 735
    return v0

    .line 728
    :catchall_78
    move-exception v0

    move-object v10, v0

    goto :goto_95

    .line 737
    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No entry found in query for APN: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_7b .. :try_end_8f} :catchall_78

    .line 739
    if-eqz v8, :cond_94

    :try_start_91
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_a4

    .line 741
    .end local v8  # "cursor":Landroid/database/Cursor;
    :cond_94
    goto :goto_b9

    .line 728
    .end local v4  # "phone":Landroid/telephony/TelephonyManager;
    .end local v5  # "serviceState":Landroid/telephony/ServiceState;
    .end local v6  # "projection":Ljava/lang/String;
    .end local v7  # "selection":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .end local p1  # "apn":Ljava/lang/String;
    :goto_95
    :try_start_95
    throw v10
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    .line 739
    .restart local v4  # "phone":Landroid/telephony/TelephonyManager;
    .restart local v5  # "serviceState":Landroid/telephony/ServiceState;
    .restart local v6  # "projection":Ljava/lang/String;
    .restart local v7  # "selection":Ljava/lang/String;
    .restart local v8  # "cursor":Landroid/database/Cursor;
    .restart local p0  # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .restart local p1  # "apn":Ljava/lang/String;
    :catchall_96
    move-exception v0

    move-object v11, v0

    if-eqz v8, :cond_a3

    :try_start_9a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a3

    :catchall_9e
    move-exception v0

    move-object v12, v0

    :try_start_a0
    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4  # "phone":Landroid/telephony/TelephonyManager;
    .end local v5  # "serviceState":Landroid/telephony/ServiceState;
    .end local v6  # "projection":Ljava/lang/String;
    .end local v7  # "selection":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .end local p1  # "apn":Ljava/lang/String;
    :cond_a3
    :goto_a3
    throw v11
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a4} :catch_a4

    .end local v8  # "cursor":Landroid/database/Cursor;
    .restart local v4  # "phone":Landroid/telephony/TelephonyManager;
    .restart local v5  # "serviceState":Landroid/telephony/ServiceState;
    .restart local v6  # "projection":Ljava/lang/String;
    .restart local v7  # "selection":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .restart local p1  # "apn":Ljava/lang/String;
    :catch_a4
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error encountered on APN query for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_b9
    return v9
.end method

.method private getNetworkCapability(I)I
    .registers 5
    .param p1, "agpsType"  # I

    .line 587
    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v1, 0x2

    if-eq p1, v1, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 594
    return v0

    .line 596
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_24
    const/16 v0, 0xa

    return v0

    .line 590
    :cond_27
    return v0
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8
    .param p1, "agpsDataConnStatus"  # I

    .line 601
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_21

    .line 602
    new-array v0, v3, [Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x1

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 602
    const-string/jumbo v4, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v0  # "message":Ljava/lang/String;
    :cond_21
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_26

    .line 610
    return-void

    .line 613
    :cond_26
    iput v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 614
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 615
    if-eq p1, v3, :cond_4d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_49

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 617
    :cond_49
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 618
    goto :goto_51

    .line 620
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 621
    nop

    .line 625
    :goto_51
    return-void
.end method

.method private handleRequestSuplConnection(I[B)V
    .registers 9
    .param p1, "agpsType"  # I
    .param p2, "suplIpAddr"  # [B

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 541
    iput p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 542
    const-string v0, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_5b

    .line 543
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_25
    :try_start_25
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 546
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address converted to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/net/UnknownHostException; {:try_start_25 .. :try_end_45} :catch_46

    .line 549
    :cond_45
    goto :goto_5b

    .line 547
    :catch_46
    move-exception v1

    .line 548
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v1  # "e":Ljava/net/UnknownHostException;
    :cond_5b
    :goto_5b
    sget-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7f

    .line 553
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 555
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 556
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v5, v1, v4

    .line 553
    const-string/jumbo v4, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "message":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v1  # "message":Ljava/lang/String;
    :cond_7f
    iget v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_84

    .line 562
    return-void

    .line 564
    :cond_84
    iput v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 569
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 570
    .local v1, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    iget v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 571
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 574
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    if-eqz v2, :cond_ca

    iget v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v2, :cond_ca

    .line 575
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_c1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding Network Specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_c1
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 578
    :cond_ca
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 579
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 584
    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;)V
    .registers 10
    .param p1, "network"  # Landroid/net/Network;

    .line 497
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 498
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 499
    .local v1, "apn":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 500
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 503
    :cond_d
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2c

    .line 504
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 506
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    .line 504
    const-string v7, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "message":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v2  # "message":Ljava/lang/String;
    :cond_2c
    iget v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v2, v6, :cond_60

    .line 513
    if-nez v1, :cond_34

    .line 516
    const-string v1, "dummy-apn"

    .line 522
    :cond_34
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_3b

    .line 523
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->setRouting()V

    .line 526
    :cond_3b
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getApnIpType(Ljava/lang/String;)I

    move-result v2

    .line 527
    .local v2, "apnIpType":I
    sget-boolean v7, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v7, :cond_57

    .line 528
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v4

    .line 531
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    .line 528
    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "message":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v4  # "message":Ljava/lang/String;
    :cond_57
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 535
    iput v5, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 537
    .end local v2  # "apnIpType":I
    :cond_60
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 20
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "isConnected"  # Z
    .param p3, "capabilities"  # Landroid/net/NetworkCapabilities;

    .line 430
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v11, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    move v4, v1

    goto :goto_17

    :cond_16
    move v4, v0

    .line 431
    .local v4, "networkAvailable":Z
    :goto_17
    move-object/from16 v2, p3

    invoke-direct {v9, v11, v10, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object v12

    .line 433
    .local v12, "networkAttributes":Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1000(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v13

    .line 434
    .local v13, "apn":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1100(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v14

    .line 437
    .local v14, "type":I
    invoke-static {v12}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1200(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object v15

    .line 438
    .end local p3  # "capabilities":Landroid/net/NetworkCapabilities;
    .local v15, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 442
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v10, v2, v0

    const/4 v0, 0x3

    aput-object v15, v2, v0

    const/4 v0, 0x4

    aput-object v13, v2, v0

    const/4 v0, 0x5

    iget-object v3, v9, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 446
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 438
    const-string/jumbo v0, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, apn: %s, availableNetworkCount: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssNetworkConnectivityHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 449
    const/16 v0, 0x12

    .line 452
    invoke-virtual {v15, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 455
    xor-int/lit8 v3, v0, 0x1

    if-eqz v13, :cond_6c

    move-object v5, v13

    goto :goto_6f

    :cond_6c
    const-string v0, ""

    move-object v5, v0

    .line 456
    :goto_6f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    .line 457
    invoke-static {v15}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1300(Landroid/net/NetworkCapabilities;)S

    move-result v8

    .line 449
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_89

    .line 458
    :cond_80
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v0, :cond_89

    .line 459
    const-string v0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_89
    :goto_89
    return-void
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "event"  # Ljava/lang/Runnable;

    .line 419
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "event"  # Ljava/lang/Runnable;

    .line 412
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 413
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 414
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 416
    :cond_19
    return-void
.end method

.method private setRouting()V
    .registers 5

    .line 630
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 634
    .local v0, "result":Z
    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_24

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 636
    :cond_24
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_3e
    :goto_3e
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "ipProtocol"  # Ljava/lang/String;
    .param p2, "apn"  # Ljava/lang/String;

    .line 747
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 748
    return v1

    .line 750
    :cond_a
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    .line 751
    return v2

    .line 753
    :cond_14
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_1e

    .line 754
    return v3

    .line 758
    :cond_1e
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string v1, "Unknown IP Protocol: %s, for APN: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return v3
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    .registers 7
    .param p1, "isConnected"  # Z
    .param p2, "network"  # Landroid/net/Network;
    .param p3, "capabilities"  # Landroid/net/NetworkCapabilities;

    .line 465
    if-nez p1, :cond_b

    .line 467
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object v0

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 471
    .local v0, "networkAttributes":Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    if-eqz v0, :cond_19

    .line 473
    invoke-static {v0, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 474
    return-object v0

    .line 478
    :cond_19
    new-instance v1, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler$1;)V

    move-object v0, v1

    .line 479
    invoke-static {v0, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 483
    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 484
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_39

    .line 485
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1002(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1102(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;I)I

    .line 490
    :cond_39
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-object v0
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 304
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public synthetic lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(I[B)V
    .registers 3
    .param p1, "agpsType"  # I
    .param p2, "suplIpAddr"  # [B

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method public synthetic lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V
    .registers 2

    .line 321
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "event"  # Ljava/lang/Runnable;

    .line 421
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 423
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    nop

    .line 425
    return-void

    .line 423
    :catchall_a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method onReportAGpsStatus(II[B)V
    .registers 7
    .param p1, "agpsType"  # I
    .param p2, "agpsStatus"  # I
    .param p3, "suplIpAddr"  # [B

    .line 315
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1e
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_43

    const/4 v0, 0x3

    if-eq p2, v0, :cond_42

    const/4 v0, 0x4

    if-eq p2, v0, :cond_42

    const/4 v0, 0x5

    if-eq p2, v0, :cond_42

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown AGPS status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 326
    :cond_42
    goto :goto_55

    .line 321
    :cond_43
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 322
    goto :goto_55

    .line 318
    :cond_4c
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 319
    nop

    .line 330
    :goto_55
    return-void
.end method

.method registerNetworkCallbacks()V
    .registers 6

    .line 289
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 290
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 291
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 292
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 294
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 295
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 296
    return-void
.end method
