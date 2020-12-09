.class Lcom/android/server/location/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    .line 46
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;)V
    .registers 6

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 170
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 173
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 174
    const/4 p2, 0x1

    const-string v0, "GnssNetworkConnectivityHandler"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 177
    iget-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 178
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 179
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 3

    .line 543
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 551
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

    .line 547
    :cond_23
    const-string v0, "OPEN"

    return-object v0

    .line 549
    :cond_26
    const-string v0, "OPENING"

    return-object v0

    .line 545
    :cond_29
    const-string v0, "CLOSED"

    return-object v0
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 4

    .line 559
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

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 565
    :cond_26
    const-string p1, "FAILED"

    return-object p1

    .line 563
    :cond_29
    const-string p1, "DONE"

    return-object p1

    .line 561
    :cond_2c
    const-string p1, "CONNECTED"

    return-object p1

    .line 567
    :cond_2f
    const-string p1, "RELEASE"

    return-object p1

    .line 569
    :cond_32
    const-string p1, "REQUEST"

    return-object p1
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .registers 4

    .line 576
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 584
    :cond_23
    const-string p1, "IMS"

    return-object p1

    .line 582
    :cond_26
    const-string p1, "EIMS"

    return-object p1

    .line 580
    :cond_29
    const-string p1, "C2K"

    return-object p1

    .line 578
    :cond_2c
    const-string p1, "SUPL"

    return-object p1
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 227
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 279
    new-instance v0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 534
    return-void

    .line 536
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 14

    .line 591
    const-string v0, "GnssNetworkConnectivityHandler"

    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 592
    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 593
    return v1

    .line 595
    :cond_9
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 596
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 597
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 598
    nop

    .line 599
    nop

    .line 603
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 604
    const-string/jumbo v3, "roaming_protocol"

    goto :goto_29

    .line 606
    :cond_26
    const-string/jumbo v3, "protocol"

    .line 609
    :goto_29
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_42

    iget v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    if-ne v4, v2, :cond_42

    .line 611
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string/jumbo v6, "type like \'%%emergency%%\' and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_4d

    .line 614
    :cond_42
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v6, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 616
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v1

    const/4 v10, 0x0

    const-string/jumbo v11, "name ASC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_9e

    .line 622
    if-eqz v2, :cond_77

    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 623
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_75

    .line 627
    :try_start_71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_9e

    .line 623
    return v1

    .line 616
    :catchall_75
    move-exception v1

    goto :goto_91

    .line 625
    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry found in query for APN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_75

    .line 627
    if-eqz v2, :cond_90

    :try_start_8d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_9e

    .line 629
    :cond_90
    goto :goto_b3

    .line 616
    :goto_91
    :try_start_91
    throw v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 627
    :catchall_92
    move-exception v3

    if-eqz v2, :cond_9d

    :try_start_95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception v2

    :try_start_9a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9d
    :goto_9d
    throw v3
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception v1

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encountered on APN query for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    :goto_b3
    return v4
.end method

.method private getNetworkCapability(I)I
    .registers 5

    .line 475
    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v1, 0x2

    if-eq p1, v1, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 482
    return v0

    .line 484
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_24
    const/16 p1, 0xa

    return p1

    .line 478
    :cond_27
    return v0
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8

    .line 489
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_21

    .line 490
    new-array v0, v3, [Ljava/lang/Object;

    .line 492
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x1

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 490
    const-string/jumbo v4, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_21
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_26

    .line 498
    return-void

    .line 501
    :cond_26
    iput v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 502
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 503
    if-eq p1, v3, :cond_4d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_49

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 505
    :cond_49
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 506
    goto :goto_51

    .line 508
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 509
    nop

    .line 513
    :goto_51
    return-void
.end method

.method private handleRequestSuplConnection(I[B)V
    .registers 7

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 435
    iput p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 436
    const-string v0, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_5b

    .line 437
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

    .line 439
    :cond_25
    :try_start_25
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 440
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

    .line 443
    :cond_45
    goto :goto_5b

    .line 441
    :catch_46
    move-exception v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    :cond_5b
    :goto_5b
    sget-boolean p2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_7f

    .line 447
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 449
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x2

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v3, p2, p1

    .line 447
    const-string/jumbo p1, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_7f
    iget p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz p1, :cond_84

    .line 456
    return-void

    .line 458
    :cond_84
    iput v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 463
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 464
    iget p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 465
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 466
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 472
    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;)V
    .registers 10

    .line 391
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 392
    nop

    .line 393
    if-eqz v0, :cond_e

    .line 394
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 393
    :cond_e
    const/4 v1, 0x0

    .line 397
    :goto_f
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2e

    .line 398
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 400
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    .line 398
    const-string v0, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2e
    iget v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v0, v6, :cond_62

    .line 407
    if-nez v1, :cond_36

    .line 410
    const-string v1, "dummy-apn"

    .line 416
    :cond_36
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_3d

    .line 417
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->setRouting()V

    .line 420
    :cond_3d
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    .line 421
    sget-boolean v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_59

    .line 422
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 422
    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_59
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 429
    iput v5, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 431
    :cond_62
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 16

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v1

    goto :goto_11

    :cond_10
    move v7, v0

    .line 325
    :goto_11
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object p3

    .line 327
    invoke-static {p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$700(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$800(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v5

    .line 331
    invoke-static {p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object p3

    .line 332
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 335
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 336
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v0, 0x3

    aput-object p3, v3, v0

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 340
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 332
    const-string/jumbo v0, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, apn: %s, availableNetworkCount: %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 343
    const/16 v0, 0x12

    .line 346
    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 349
    xor-int/lit8 v6, v0, 0x1

    if-eqz v2, :cond_64

    move-object v8, v2

    goto :goto_67

    :cond_64
    const-string v0, ""

    move-object v8, v0

    .line 350
    :goto_67
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    .line 351
    invoke-static {p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1000(Landroid/net/NetworkCapabilities;)S

    move-result v11

    .line 343
    move-object v3, p0

    move v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_7e

    .line 352
    :cond_75
    sget-boolean p1, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz p1, :cond_7e

    .line 353
    const-string p1, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_7e
    :goto_7e
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

    .line 313
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$aTyNcuGLHmJGtXKl9qoZpMmhfBY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 307
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 308
    iget-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 310
    :cond_19
    return-void
.end method

.method private setRouting()V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 522
    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_24

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error requesting route to host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 524
    :cond_24
    sget-boolean v0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully requested route to host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_3e
    :goto_3e
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 635
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 636
    return v1

    .line 638
    :cond_a
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    .line 639
    return v2

    .line 641
    :cond_14
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_1e

    .line 642
    return v3

    .line 646
    :cond_1e
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "Unknown IP Protocol: %s, for APN: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 647
    const-string p2, "GnssNetworkConnectivityHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v3
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
    .registers 5

    .line 359
    if-nez p1, :cond_b

    .line 361
    iget-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object p1

    .line 364
    :cond_b
    iget-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 365
    if-eqz p1, :cond_19

    .line 367
    invoke-static {p1, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$902(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 368
    return-object p1

    .line 372
    :cond_19
    new-instance p1, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler$1;)V

    .line 373
    invoke-static {p1, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$902(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 377
    iget-object p3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p3

    .line 378
    if-eqz p3, :cond_38

    .line 379
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$702(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$802(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;I)I

    .line 384
    :cond_38
    iget-object p3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object p1
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public synthetic lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(I[B)V
    .registers 3

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method public synthetic lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V
    .registers 2

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .registers 3

    .line 315
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 317
    iget-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 318
    nop

    .line 319
    return-void

    .line 317
    :catchall_a
    move-exception p1

    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1
.end method

.method onReportAGpsStatus(II[B)V
    .registers 7

    .line 209
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

    .line 210
    :cond_1e
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4c

    const/4 p1, 0x2

    if-eq p2, p1, :cond_43

    const/4 p1, 0x3

    if-eq p2, p1, :cond_42

    const/4 p1, 0x4

    if-eq p2, p1, :cond_42

    const/4 p1, 0x5

    if-eq p2, p1, :cond_42

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received unknown AGPS status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 220
    :cond_42
    goto :goto_55

    .line 215
    :cond_43
    new-instance p1, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;

    invoke-direct {p1, p0}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 216
    goto :goto_55

    .line 212
    :cond_4c
    new-instance p2, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;-><init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 213
    nop

    .line 224
    :goto_55
    return-void
.end method

.method registerNetworkCallbacks()V
    .registers 5

    .line 183
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 184
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 185
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 186
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 188
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 189
    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 190
    return-void
.end method
