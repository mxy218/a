.class public Landroid/net/ip/IpClientCallbacks;
.super Ljava/lang/Object;
.source "IpClientCallbacks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .registers 2
    .param p1, "filter"  # [B

    .line 96
    return-void
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .registers 2
    .param p1, "ipClient"  # Landroid/net/ip/IIpClient;

    .line 38
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"  # Landroid/net/LinkProperties;

    .line 81
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .registers 2
    .param p1, "dhcpResults"  # Landroid/net/DhcpResults;

    .line 66
    return-void
.end method

.method public onPostDhcpAction()V
    .registers 1

    .line 54
    return-void
.end method

.method public onPreDhcpAction()V
    .registers 1

    .line 49
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"  # Landroid/net/LinkProperties;

    .line 76
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "newLp"  # Landroid/net/LinkProperties;

    .line 71
    return-void
.end method

.method public onQuit()V
    .registers 1

    .line 91
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 2
    .param p1, "logMsg"  # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 112
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 118
    return-void
.end method

.method public startReadPacketFilter()V
    .registers 1

    .line 106
    return-void
.end method
