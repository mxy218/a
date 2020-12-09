.class public final Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;
.super Ljava/lang/Object;
.source "TetheringInterfaceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;
    .registers 3

    .line 69
    const/4 v0, 0x0

    if-eqz p0, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 73
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIpv6DnsServer()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 75
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 77
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 79
    :goto_2a
    if-eqz v0, :cond_35

    .line 80
    iget-object p0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    .line 81
    :cond_35
    const/4 p0, 0x0

    .line 79
    :goto_36
    return-object p0
.end method

.method private static getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 3

    .line 85
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 86
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object p0

    goto :goto_d

    .line 87
    :cond_c
    move-object p0, v0

    .line 88
    :goto_d
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public static getTetheringInterfaces(Landroid/net/NetworkState;)Landroid/net/util/InterfaceSet;
    .registers 5

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 40
    return-object v0

    .line 43
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 44
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object p0

    .line 47
    if-nez v1, :cond_15

    if-nez p0, :cond_15

    goto :goto_23

    :cond_15
    new-instance v0, Landroid/net/util/InterfaceSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-direct {v0, v2}, Landroid/net/util/InterfaceSet;-><init>([Ljava/lang/String;)V

    :goto_23
    return-object v0
.end method
