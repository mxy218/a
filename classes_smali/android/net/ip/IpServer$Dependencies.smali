.class public Landroid/net/ip/IpServer$Dependencies;
.super Ljava/lang/Object;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object p1

    return-object p1
.end method

.method public getNetdService()Landroid/net/INetd;
    .registers 2

    .line 142
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;
    .registers 3

    .line 134
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Landroid/net/util/InterfaceParams;)V

    return-object v0
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V
    .registers 5

    .line 150
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkStackClient;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 151
    return-void
.end method
