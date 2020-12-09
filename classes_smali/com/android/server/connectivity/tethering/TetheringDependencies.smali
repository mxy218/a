.class public Lcom/android/server/connectivity/tethering/TetheringDependencies;
.super Ljava/lang/Object;
.source "TetheringDependencies.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTetheringConfiguration(Landroid/content/Context;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .registers 5

    .line 94
    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V

    return-object v0
.end method

.method public getDefaultNetworkRequest()Landroid/net/NetworkRequest;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .registers 13

    .line 86
    new-instance v6, Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/EntitlementManager;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)V

    return-object v6
.end method

.method public getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;-><init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;
    .registers 2

    .line 64
    new-instance v0, Landroid/net/ip/IpServer$Dependencies;

    invoke-direct {v0}, Landroid/net/ip/IpServer$Dependencies;-><init>()V

    return-object v0
.end method

.method public getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
    .registers 4

    .line 41
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;-><init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .registers 6

    .line 49
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    return-object v0
.end method

.method public isTetheringSupported()Z
    .registers 2

    .line 71
    const/4 v0, 0x1

    return v0
.end method
