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

.field private static final WIGIG_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.50.1"

.field private static final WIGIG_HOST_IFACE_PREFIX_LENGTH:I = 0x18

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

.field private mIsUntethering:Z

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

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 112
    sget-object v0, Landroid/net/ip/IpServer;->messageClasses:[Ljava/lang/Class;

    .line 113
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V
    .registers 14
    .param p1, "ifaceName"  # Ljava/lang/String;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "interfaceType"  # I
    .param p4, "log"  # Landroid/net/util/SharedLog;
    .param p5, "nMService"  # Landroid/os/INetworkManagementService;
    .param p6, "statsService"  # Landroid/net/INetworkStatsService;
    .param p7, "callback"  # Landroid/net/ip/IpServer$Callback;
    .param p8, "usingLegacyDhcp"  # Z
    .param p9, "deps"  # Landroid/net/ip/IpServer$Dependencies;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 220
    iput-boolean v0, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    .line 228
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    .line 229
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    .line 230
    invoke-virtual {p9}, Landroid/net/ip/IpServer$Dependencies;->getNetdService()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 231
    iput-object p6, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    .line 232
    iput-object p7, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 233
    new-instance v1, Landroid/net/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v1, p1, v2, v3}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object v1, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 234
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 235
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 236
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 237
    iput-boolean p8, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 238
    iput-object p9, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 239
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 240
    iput v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 243
    new-instance v0, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    .line 244
    new-instance v0, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 245
    new-instance v0, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    .line 246
    new-instance v0, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    .line 247
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 248
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 249
    iget-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 250
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->addState(Lcom/android/internal/util/State;)V

    .line 252
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->setInitialState(Lcom/android/internal/util/State;)V

    .line 253
    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpServer;)I
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/ip/IpServer;I)I
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # I

    .line 74
    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p1
.end method

.method static synthetic access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # Landroid/net/LinkProperties;

    .line 74
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$1402(Landroid/net/ip/IpServer;Z)Z
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # Z

    .line 74
    iput-boolean p1, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/ip/IpServer;)Z
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpServer;)Z
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/net/ip/IpServer;)V
    .registers 1
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ip/IpServer;)I
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return v0
.end method

.method static synthetic access$2000(Landroid/net/ip/IpServer;)V
    .registers 1
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/ip/IpServer;)V
    .registers 1
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/ip/IpServer;)V
    .registers 1
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # Landroid/net/util/InterfaceSet;

    .line 74
    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;

    .line 74
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # Landroid/net/dhcp/IDhcpServer;

    .line 74
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/ip/IpServer;I)V
    .registers 2
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # I

    .line 74
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V
    .registers 3
    .param p0, "x0"  # Landroid/net/ip/IpServer;
    .param p1, "x1"  # Lcom/android/internal/util/State;
    .param p2, "x2"  # I

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method private configureDhcp(ZLjava/net/Inet4Address;I)Z
    .registers 5
    .param p1, "enable"  # Z
    .param p2, "addr"  # Ljava/net/Inet4Address;
    .param p3, "prefixLen"  # I

    .line 388
    if-eqz p1, :cond_7

    .line 389
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Ljava/net/Inet4Address;I)Z

    move-result v0

    return v0

    .line 391
    :cond_7
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method private configureIPv4(Z)Z
    .registers 11
    .param p1, "enabled"  # Z

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "ipAsString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 411
    .local v1, "prefixLen":I
    iget v2, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 412
    const-string v0, "192.168.42.129"

    .line 413
    const/16 v1, 0x18

    goto :goto_1c

    .line 414
    :cond_d
    if-nez v2, :cond_16

    .line 415
    invoke-direct {p0}, Landroid/net/ip/IpServer;->getRandomWifiIPv4Address()Ljava/lang/String;

    move-result-object v0

    .line 416
    const/16 v1, 0x18

    goto :goto_1c

    .line 417
    :cond_16
    if-ne v2, v3, :cond_ac

    .line 418
    const-string v0, "192.168.50.1"

    .line 419
    const/16 v1, 0x18

    .line 428
    :goto_1c
    const/4 v2, 0x0

    :try_start_1d
    iget-object v5, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    .line 429
    .local v5, "ifcg":Landroid/net/InterfaceConfiguration;
    if-nez v5, :cond_2f

    .line 430
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "Received null interface config"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 431
    return v2

    .line 434
    :cond_2f
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 435
    .local v6, "addr":Ljava/net/InetAddress;
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v6, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 436
    .local v7, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v5, v7}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 437
    iget v8, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz v8, :cond_4e

    iget v8, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-ne v8, v3, :cond_44

    goto :goto_4e

    .line 444
    :cond_44
    if-eqz p1, :cond_4a

    .line 445
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_51

    .line 447
    :cond_4a
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    goto :goto_51

    .line 442
    :cond_4e
    :goto_4e
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    .line 450
    :goto_51
    const-string/jumbo v3, "running"

    invoke-virtual {v5, v3}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v3, v8, v5}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 456
    move-object v3, v6

    check-cast v3, Ljava/net/Inet4Address;

    invoke-direct {p0, p1, v3, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_65} :catch_86

    if-nez v3, :cond_68

    .line 457
    return v2

    .line 470
    .end local v5  # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v6  # "addr":Ljava/net/InetAddress;
    :cond_68
    nop

    .line 473
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .line 474
    .local v2, "route":Landroid/net/RouteInfo;
    if-eqz p1, :cond_7b

    .line 475
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 476
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_85

    .line 478
    :cond_7b
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v7}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 479
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 481
    :goto_85
    return v4

    .line 459
    .end local v2  # "route":Landroid/net/RouteInfo;
    .end local v7  # "linkAddr":Landroid/net/LinkAddress;
    :catch_86
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error configuring interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 461
    if-nez p1, :cond_ab

    .line 464
    :try_start_9f
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 467
    goto :goto_ab

    .line 465
    :catch_a3
    move-exception v4

    .line 466
    .local v4, "dhcpError":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v6, "Error stopping DHCP"

    invoke-virtual {v5, v6, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    .end local v4  # "dhcpError":Ljava/lang/Exception;
    :cond_ab
    :goto_ab
    return v2

    .line 422
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_ac
    const-string v2, "192.168.44.1"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 423
    .local v2, "srvAddr":Ljava/net/Inet4Address;
    const/16 v3, 0x18

    invoke-direct {p0, p1, v2, v3}, Landroid/net/ip/IpServer;->configureDhcp(ZLjava/net/Inet4Address;I)Z

    move-result v3

    return v3
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 10
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

    .line 611
    .local p1, "deprecatedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .local p2, "newDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_11

    .line 612
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 613
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 614
    return-void

    .line 618
    :cond_11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_52

    .line 619
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 620
    .local v2, "dns":Ljava/net/Inet6Address;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v3, v2, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 621
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove local dns IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 624
    :cond_47
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 625
    .end local v2  # "dns":Ljava/net/Inet6Address;
    goto :goto_1d

    .line 629
    :cond_52
    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 630
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 631
    .local v0, "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v2, :cond_69

    .line 632
    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 635
    :cond_69
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet6Address;

    .line 636
    .local v3, "dns":Ljava/net/Inet6Address;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v4, v3, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 637
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add local dns IP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 641
    :cond_9a
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v3, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 642
    .end local v3  # "dns":Ljava/net/Inet6Address;
    goto :goto_6d

    .line 646
    .end local v0  # "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    :cond_a5
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    if-eqz v0, :cond_b1

    .line 647
    const-string v0, "IpServer"

    const-string v1, "Skip iface update when untethering "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void

    .line 653
    :cond_b1
    :try_start_b1
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_b6
    .catch Landroid/os/ServiceSpecificException; {:try_start_b1 .. :try_end_b6} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b6} :catch_b7

    .line 657
    goto :goto_c4

    .line 654
    :catch_b7
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to update local DNS caching server"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 656
    if-eqz p2, :cond_c4

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 658
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_c4
    :goto_c4
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 10
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

    .line 567
    .local p1, "deprecatedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .local p2, "newPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 568
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 569
    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    .local v0, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_c
    iget-object v1, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v1

    .line 572
    .local v1, "removalFailures":I
    if-lez v1, :cond_29

    .line 573
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Failed to remove %d IPv6 routes from local table."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 573
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a

    .line 578
    .end local v1  # "removalFailures":I
    :cond_29
    goto :goto_41

    .line 576
    :catch_2a
    move-exception v1

    .line 577
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 580
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .local v2, "route":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_45

    .line 584
    .end local v0  # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    .end local v2  # "route":Landroid/net/RouteInfo;
    :cond_57
    if-eqz p2, :cond_af

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    .line 585
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 586
    .local v0, "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v1, :cond_6e

    .line 587
    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 590
    :cond_6e
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    .line 591
    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 592
    invoke-static {v1, v0}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    .line 598
    .local v1, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_7a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_81} :catch_82

    .line 601
    goto :goto_99

    .line 599
    :catch_82
    move-exception v2

    .line 600
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 603
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, "route":Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_9d

    .line 606
    .end local v0  # "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .end local v1  # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    .end local v3  # "route":Landroid/net/RouteInfo;
    :cond_af
    return-void
.end method

.method private getHopLimit(Ljava/lang/String;)B
    .registers 6
    .param p1, "upstreamIface"  # Ljava/lang/String;

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/4 v1, 0x6

    const-string v2, "hop_limit"

    .line 663
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, p1, v2}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    .line 665
    .local v0, "upstreamHopLimit":I
    add-int/2addr v0, v3

    .line 667
    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    int-to-byte v1, v1

    return v1

    .line 668
    .end local v0  # "upstreamHopLimit":I
    :catch_17
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find upstream interface hop limit"

    invoke-virtual {v1, v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    .end local v0  # "e":Ljava/lang/Exception;
    const/16 v0, 0x41

    return v0
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7
    .param p0, "localPrefix"  # Landroid/net/IpPrefix;

    .line 1033
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 1034
    .local v0, "dnsBytes":[B
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

    .line 1036
    const/4 v1, 0x0

    :try_start_20
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_24} :catch_25

    return-object v1

    .line 1037
    :catch_25
    move-exception v2

    .line 1038
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IpServer"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "ifname"  # Ljava/lang/String;
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

    .line 1024
    .local p1, "prefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v0, "localRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 1026
    .local v2, "ipp":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v2  # "ipp":Landroid/net/IpPrefix;
    goto :goto_9

    .line 1028
    :cond_1f
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .registers 6
    .param p0, "dflt"  # B
    .param p1, "excluded"  # [B

    .line 1044
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 1045
    .local v0, "random":B
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-byte v3, p1, v2

    .line 1046
    .local v3, "value":I
    if-ne v0, v3, :cond_13

    return p0

    .line 1045
    .end local v3  # "value":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1048
    :cond_16
    return v0
.end method

.method private getRandomWifiIPv4Address()Ljava/lang/String;
    .registers 8

    .line 486
    const-string v0, "192.168.43.1"

    :try_start_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 487
    .local v1, "bytes":[B
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

    .line 488
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    return-object v0

    .line 489
    .end local v1  # "bytes":[B
    :catch_31
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"  # I

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

    move-result-object v0

    return-object v0

    .line 85
    :cond_1d
    const-string v0, "LOCAL_ONLY"

    return-object v0

    .line 84
    :cond_20
    const-string v0, "TETHERED"

    return-object v0

    .line 83
    :cond_23
    const-string v0, "AVAILABLE"

    return-object v0

    .line 82
    :cond_26
    const-string v0, "UNAVAILABLE"

    return-object v0
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 7
    .param p1, "state"  # Lcom/android/internal/util/State;
    .param p2, "what"  # I

    .line 692
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    .line 706
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 707
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4
    .param p1, "newInterfaceState"  # I

    .line 696
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 697
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 698
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    .line 699
    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    .line 702
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 703
    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6
    .param p1, "newParams"  # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 675
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_24

    .line 676
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 677
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 679
    .local v0, "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 680
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 679
    :goto_13
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 682
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 683
    if-eqz p1, :cond_1c

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 682
    :cond_1c
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 685
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 688
    .end local v0  # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_24
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 689
    return-void
.end method

.method private startDhcp(Ljava/net/Inet4Address;I)Z
    .registers 10
    .param p1, "addr"  # Ljava/net/Inet4Address;
    .param p2, "prefixLen"  # I

    .line 346
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 347
    return v1

    .line 350
    :cond_6
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v2, v1, [Ljava/net/Inet4Address;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 351
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    const-wide/16 v4, 0xe10

    .line 352
    invoke-virtual {v0, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-array v2, v1, [Ljava/net/Inet4Address;

    aput-object p1, v2, v3

    .line 353
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 354
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    .line 358
    .local v0, "params":Landroid/net/dhcp/DhcpServingParamsParcel;
    iget v2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 359
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v5, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$1;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    .line 361
    return v1
.end method

.method private startIPv4()Z
    .registers 2

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .registers 4

    .line 495
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 496
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 497
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 499
    return v1

    .line 502
    :cond_1a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 503
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 504
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    .line 505
    return v1

    .line 508
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method private stopDhcp()V
    .registers 3

    .line 366
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 368
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_1a

    .line 370
    :try_start_a
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 383
    goto :goto_1a

    .line 381
    :catch_16
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 385
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private stopIPv4()V
    .registers 2

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    .line 400
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 401
    return-void
.end method

.method private stopIPv6()V
    .registers 3

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 513
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 515
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_f

    .line 516
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 517
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 519
    :cond_f
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .registers 8
    .param p1, "v6only"  # Landroid/net/LinkProperties;

    .line 528
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_5

    return-void

    .line 531
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 532
    return-void

    .line 535
    :cond_e
    const/4 v0, 0x0

    .line 537
    .local v0, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p1, :cond_6c

    .line 538
    new-instance v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    move-object v0, v1

    .line 539
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 540
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 542
    iget-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 544
    :cond_31
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 545
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4e

    goto :goto_39

    .line 547
    :cond_4e
    new-instance v3, Landroid/net/IpPrefix;

    .line 548
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 549
    .local v3, "prefix":Landroid/net/IpPrefix;
    iget-object v4, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static {v3}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v4

    .line 552
    .local v4, "dnsServer":Ljava/net/Inet6Address;
    if-eqz v4, :cond_6b

    .line 553
    iget-object v5, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v2  # "linkAddr":Landroid/net/LinkAddress;
    .end local v3  # "prefix":Landroid/net/IpPrefix;
    .end local v4  # "dnsServer":Ljava/net/Inet6Address;
    :cond_6b
    goto :goto_39

    .line 560
    :cond_6c
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 561
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 562
    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 264
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return v0
.end method

.method public stop()V
    .registers 2

    .line 266
    const v0, 0x50068

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    .line 268
    const v0, 0x50067

    invoke-virtual {p0, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    return-void
.end method
