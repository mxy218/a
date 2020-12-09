.class public Landroid/net/ip/IpServer;
.super Lcom/android/internal/util/StateMachine;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpServer$UnavailableState;,
        Landroid/net/ip/IpServer$TetheredState;,
        Landroid/net/ip/IpServer$LocalHotspotState;,
        Landroid/net/ip/IpServer$BaseServingState;,
        Landroid/net/ip/IpServer$InitialState;,
        Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;,
        Landroid/net/ip/IpServer$OnHandlerStatusCallback;,
        Landroid/net/ip/IpServer$Dependencies;,
        Landroid/net/ip/IpServer$Callback;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field private static final BLUETOOTH_DHCP_PREFIX_LENGTH:I = 0x18

.field private static final BLUETOOTH_IFACE_ADDR:Ljava/lang/String; = "192.168.44.1"

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final DHCP_LEASE_TIME_SECS:I = 0xe10

.field private static final DOUG_ADAMS:B = 0x2at

.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_LOCAL_ONLY:I = 0x3

.field public static final STATE_TETHERED:I = 0x2

.field public static final STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpServer"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/net/ip/IpServer$Callback;

.field private final mDeps:Landroid/net/ip/IpServer$Dependencies;

.field private mDhcpServer:Landroid/net/dhcp/IDhcpServer;

.field private mDhcpServerStartIndex:I

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mUsingLegacyDhcp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 110
    sget-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 111
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V
    .registers 10

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 209
    const/4 p2, 0x0

    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 218
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p4

    iput-object p4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    .line 219
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    .line 220
    invoke-virtual {p9}, Landroid/net/ip/IpServer$Dependencies;->getNetdService()Landroid/net/INetd;

    move-result-object p4

    iput-object p4, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 221
    iput-object p6, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    .line 222
    iput-object p7, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 223
    new-instance p4, Landroid/net/ip/InterfaceController;

    iget-object p5, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object p6, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {p4, p1, p5, p6}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object p4, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 224
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 225
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 226
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 227
    iput-boolean p8, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 228
    iput-object p9, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 229
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 230
    iput p2, p0, Landroid/net/ip/IpServer;->mLastError:I

    .line 231
    const/4 p1, 0x1

    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 233
    new-instance p1, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    .line 234
    new-instance p1, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 235
    new-instance p1, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    .line 236
    new-instance p1, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    .line 237
    iget-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 238
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 239
    iget-object p1, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 240
    iget-object p1, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 242
    iget-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpServer;->setInitialState(Lcom/android/internal/util/State;)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 74
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method static synthetic access$002(Landroid/net/ip/IpServer;I)I
    .registers 2

    .line 74
    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p1
.end method

.method static synthetic access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/ip/IpServer;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv4()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method static synthetic access$1700(Landroid/net/ip/IpServer;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 74
    iget p0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return p0
.end method

.method static synthetic access$2000(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p0
.end method

.method static synthetic access$2202(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2

    .line 74
    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    return-object p0
.end method

.method static synthetic access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$400(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 1

    .line 74
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p0
.end method

.method static synthetic access$402(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 2

    .line 74
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/ip/IpServer;I)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method private configureDhcp(ZLjava/net/Inet4Address;I)Z
    .registers 4

    .line 377
    if-eqz p1, :cond_7

    .line 378
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Ljava/net/Inet4Address;I)Z

    move-result p1

    return p1

    .line 380
    :cond_7
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    .line 381
    const/4 p1, 0x1

    return p1
.end method

.method private configureIPv4(Z)Z
    .registers 10

    .line 398
    nop

    .line 399
    nop

    .line 400
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 401
    nop

    .line 402
    const-string v0, "192.168.42.129"

    goto :goto_14

    .line 403
    :cond_d
    if-nez v0, :cond_9e

    .line 404
    invoke-direct {p0}, Landroid/net/ip/IpServer;->getRandomWifiIPv4Address()Ljava/lang/String;

    move-result-object v0

    .line 405
    nop

    .line 414
    :goto_14
    const/4 v3, 0x0

    :try_start_15
    iget-object v4, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 415
    if-nez v4, :cond_27

    .line 416
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "Received null interface config"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 417
    return v3

    .line 420
    :cond_27
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 421
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 422
    invoke-virtual {v4, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 423
    iget v6, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-nez v6, :cond_3b

    .line 427
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    goto :goto_44

    .line 429
    :cond_3b
    if-eqz p1, :cond_41

    .line 430
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_44

    .line 432
    :cond_41
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 435
    :goto_44
    const-string/jumbo v6, "running"

    invoke-virtual {v4, v6}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 439
    iget-object v6, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 441
    check-cast v0, Ljava/net/Inet4Address;

    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_57} :catch_78

    if-nez v0, :cond_5a

    .line 442
    return v3

    .line 455
    :cond_5a
    nop

    .line 458
    new-instance v0, Landroid/net/RouteInfo;

    invoke-direct {v0, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .line 459
    if-eqz p1, :cond_6d

    .line 460
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 461
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_77

    .line 463
    :cond_6d
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 464
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 466
    :goto_77
    return v2

    .line 444
    :catch_78
    move-exception v0

    .line 445
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error configuring interface "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 446
    if-nez p1, :cond_9d

    .line 449
    :try_start_91
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_95

    .line 452
    goto :goto_9d

    .line 450
    :catch_95
    move-exception p1

    .line 451
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "Error stopping DHCP"

    invoke-virtual {v0, v1, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    :cond_9d
    :goto_9d
    return v3

    .line 408
    :cond_9e
    const-string v0, "192.168.44.1"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 409
    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result p1

    return p1
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_11

    .line 597
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 598
    :cond_9
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p2, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 599
    return-void

    .line 603
    :cond_11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_52

    .line 604
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 605
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 606
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 609
    :cond_47
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 610
    goto :goto_1d

    .line 614
    :cond_52
    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 615
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 616
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_69

    .line 617
    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 620
    :cond_69
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 621
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 622
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 626
    :cond_9a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 627
    goto :goto_6d

    .line 631
    :cond_a5
    :try_start_a5
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_aa
    .catch Landroid/os/ServiceSpecificException; {:try_start_a5 .. :try_end_aa} :catch_ab
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_ab

    .line 635
    goto :goto_b8

    .line 632
    :catch_ab
    move-exception p1

    .line 633
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v0, "Failed to update local DNS caching server"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 634
    if-eqz p2, :cond_b8

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 636
    :cond_b8
    :goto_b8
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 553
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 554
    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 556
    :try_start_c
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v0

    .line 557
    if-lez v0, :cond_29

    .line 558
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to remove %d IPv6 routes from local table."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 558
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a

    .line 563
    :cond_29
    goto :goto_41

    .line 561
    :catch_2a
    move-exception v0

    .line 562
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 565
    :goto_41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_45

    .line 569
    :cond_57
    if-eqz p2, :cond_af

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_af

    .line 570
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 571
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_6e

    .line 572
    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 575
    :cond_6e
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_af

    .line 576
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 577
    invoke-static {p2, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 583
    :try_start_7a
    iget-object p2, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_81} :catch_82

    .line 586
    goto :goto_99

    .line 584
    :catch_82
    move-exception p2

    .line 585
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 588
    :goto_99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_9d

    .line 591
    :cond_af
    return-void
.end method

.method private getHopLimit(Ljava/lang/String;)B
    .registers 6

    .line 640
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/4 v1, 0x6

    const-string v2, "hop_limit"

    .line 641
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, p1, v2}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    .line 643
    add-int/2addr p1, v3

    .line 645
    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Integer;->min(II)I

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    int-to-byte p1, p1

    return p1

    .line 646
    :catch_17
    move-exception p1

    .line 647
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "Failed to find upstream interface hop limit"

    invoke-virtual {v0, v1, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    const/16 p1, 0x41

    return p1
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7

    .line 986
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 987
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v2

    const/16 v2, 0x2a

    invoke-static {v2, v3}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 989
    const/4 v1, 0x0

    :try_start_20
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 990
    :catch_25
    move-exception v0

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to construct Inet6Address from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IpServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 978
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 979
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    goto :goto_9

    .line 981
    :cond_1f
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .registers 6

    .line 997
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 998
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-byte v3, p1, v2

    .line 999
    if-ne v0, v3, :cond_13

    return p0

    .line 998
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1001
    :cond_16
    return v0
.end method

.method private getRandomWifiIPv4Address()Ljava/lang/String;
    .registers 8

    .line 471
    const-string v0, "192.168.43.1"

    :try_start_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 472
    const/16 v2, 0x2a

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v6

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    sget-byte v6, Landroid/net/util/NetworkConstants;->FF:B

    aput-byte v6, v4, v5

    invoke-static {v2, v4}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v1, v3

    .line 473
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    return-object v0

    .line 474
    :catch_31
    move-exception v1

    .line 475
    return-object v0
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 3

    .line 81
    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1d
    const-string p0, "LOCAL_ONLY"

    return-object p0

    .line 84
    :cond_20
    const-string p0, "TETHERED"

    return-object p0

    .line 83
    :cond_23
    const-string p0, "AVAILABLE"

    return-object p0

    .line 82
    :cond_26
    const-string p0, "UNAVAILABLE"

    return-object p0
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 6

    .line 670
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    .line 684
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 685
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4

    .line 674
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 675
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 676
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    .line 677
    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    .line 680
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 681
    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .line 653
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_24

    .line 654
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 655
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 657
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 658
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 657
    :goto_13
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 660
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 661
    if-eqz p1, :cond_1c

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 660
    :cond_1c
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 663
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 666
    :cond_24
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 667
    return-void
.end method

.method private startDhcp(Ljava/net/Inet4Address;I)Z
    .registers 9

    .line 335
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 336
    return v1

    .line 339
    :cond_6
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v2, v1, [Ljava/net/Inet4Address;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 340
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    const-wide/16 v4, 0xe10

    .line 341
    invoke-virtual {v0, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-array v2, v1, [Ljava/net/Inet4Address;

    aput-object p1, v2, v3

    .line 342
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 343
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 344
    invoke-virtual {p1, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 347
    iget p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 348
    iget-object p2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v3, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$1;)V

    invoke-virtual {p2, v0, p1, v2}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    .line 350
    return v1
.end method

.method private startIPv4()Z
    .registers 2

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .registers 4

    .line 480
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 481
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 482
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 484
    return v1

    .line 487
    :cond_1a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 488
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 489
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 490
    return v1

    .line 493
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method private stopDhcp()V
    .registers 3

    .line 355
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 357
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_1a

    .line 359
    :try_start_a
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 372
    goto :goto_1a

    .line 370
    :catch_16
    move-exception v0

    .line 371
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 374
    :cond_1a
    :goto_1a
    return-void
.end method

.method private stopIPv4()V
    .registers 2

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    .line 389
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 390
    return-void
.end method

.method private stopIPv6()V
    .registers 3

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 498
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 500
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_f

    .line 501
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 502
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 504
    :cond_f
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .registers 7

    .line 513
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_5

    return-void

    .line 516
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 517
    return-void

    .line 520
    :cond_e
    const/4 v0, 0x0

    .line 522
    if-eqz p1, :cond_6b

    .line 523
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v0}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 524
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 525
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 527
    iget-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 529
    :cond_30
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 530
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4d

    goto :goto_38

    .line 532
    :cond_4d
    new-instance v3, Landroid/net/IpPrefix;

    .line 533
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 534
    iget-object v2, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-static {v3}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_6a

    .line 538
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_6a
    goto :goto_38

    .line 545
    :cond_6b
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 546
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 547
    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 253
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return v0
.end method

.method public stop()V
    .registers 2

    .line 255
    const v0, 0x50068

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    .line 257
    const v0, 0x50067

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method
