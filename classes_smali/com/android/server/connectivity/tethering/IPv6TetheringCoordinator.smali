.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNextSubnetId:S

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueLocalPrefix:[B

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    .line 80
    sget-object p1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    .line 81
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    .line 82
    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->generateUniqueLocalPrefix()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    .line 83
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 84
    return-void
.end method

.method private static generateUniqueLocalPrefix()[B
    .registers 3

    .line 288
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 289
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 291
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    .line 294
    return-object v0
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 7

    .line 210
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 211
    if-nez p0, :cond_8

    .line 212
    return-object v0

    .line 218
    :cond_8
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 222
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x40

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 223
    invoke-virtual {v2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    if-ne v4, v3, :cond_3b

    .line 224
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 226
    :cond_3b
    goto :goto_1e

    .line 228
    :cond_3c
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 229
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_65

    .line 231
    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    if-gt v4, v3, :cond_65

    .line 232
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 234
    :cond_65
    goto :goto_44

    .line 236
    :cond_66
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 237
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 239
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 241
    :cond_83
    goto :goto_6e

    .line 243
    :cond_84
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private getInterfaceIPv6LinkProperties(Landroid/net/ip/IpServer;)Landroid/net/LinkProperties;
    .registers 6

    .line 167
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 169
    return-object v1

    .line 172
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    .line 173
    if-nez v0, :cond_10

    return-object v1

    .line 175
    :cond_10
    iget v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 177
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    iget-short v0, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getUniqueLocalConfig([BS)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_27

    goto :goto_4b

    .line 190
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 191
    if-eqz v0, :cond_4a

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->ipServer:Landroid/net/ip/IpServer;

    if-ne v0, p1, :cond_4a

    .line 192
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object p1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 195
    return-object p1

    .line 199
    :cond_4a
    return-object v1

    .line 182
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private static getUniqueLocalConfig([BS)Landroid/net/LinkProperties;
    .registers 6

    .line 260
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 262
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-static {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v1

    .line 263
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 265
    const/16 v1, 0x40

    invoke-static {p0, p1, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object p0

    .line 269
    new-instance p1, Landroid/net/LinkAddress;

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 271
    const/16 p0, 0x5dc

    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 272
    return-object v0
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .registers 2

    .line 251
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_24

    .line 252
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_24

    .line 253
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_24

    .line 254
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_24

    .line 255
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_24

    .line 256
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    .line 251
    :goto_25
    return p0
.end method

.method private static makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;
    .registers 5

    .line 276
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 277
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, p0, v1

    .line 278
    int-to-byte p1, p1

    const/16 v0, 0x8

    aput-byte p1, p0, v0

    .line 279
    new-instance p1, Landroid/net/IpPrefix;

    invoke-direct {p1, p0, p2}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object p1
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 10

    .line 142
    if-nez p1, :cond_6

    .line 143
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    goto :goto_26

    .line 146
    :cond_6
    new-instance v7, Landroid/net/NetworkState;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v3, Landroid/net/NetworkCapabilities;

    iget-object v0, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v3, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v4, Landroid/net/Network;

    iget-object p1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v4, p1}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    .line 155
    :goto_26
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUpstreamNetworkState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V
    .registers 4

    .line 308
    const/4 v0, 0x0

    const v1, 0x50071

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    .line 309
    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 137
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V

    .line 138
    goto :goto_6

    .line 139
    :cond_16
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .registers 4

    .line 298
    if-nez p0, :cond_5

    .line 299
    const-string p0, "NetworkState{null}"

    return-object p0

    .line 301
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    aput-object p0, v0, v1

    const-string p0, "NetworkState{%s, %s, %s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateIPv6TetheringInterfaces()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ip/IpServer;

    .line 160
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Landroid/net/ip/IpServer;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 161
    const v2, 0x50071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    .line 162
    nop

    .line 164
    :cond_1e
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Landroid/net/ip/IpServer;I)V
    .registers 6

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    if-nez v0, :cond_24

    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    iget-short v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;-><init>(Landroid/net/ip/IpServer;IS)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 95
    const/4 p1, 0x0

    iget-short p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 97
    :cond_21
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 99
    :cond_24
    return-void
.end method

.method findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 204
    iget-object v2, v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->ipServer:Landroid/net/ip/IpServer;

    if-ne v2, p1, :cond_17

    return-object v1

    .line 205
    :cond_17
    goto :goto_6

    .line 206
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeActiveDownstream(Landroid/net/ip/IpServer;)V
    .registers 3

    .line 102
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 108
    :cond_12
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 109
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 110
    sget-object p1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    const-string v0, "Tethering notify list empty, IPv6 downstreams non-empty."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_29
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 114
    :cond_2c
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 4

    .line 120
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 121
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 122
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 123
    return-void

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 127
    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 131
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 133
    return-void
.end method
