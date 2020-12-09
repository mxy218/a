.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Nat464Xlat$State;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final NETWORK_STATES:[Landroid/net/NetworkInfo$State;

.field private static final NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private mIPv6Address:Ljava/net/Inet6Address;

.field private mIface:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNat64Prefix:Landroid/net/IpPrefix;

.field private final mNetd:Landroid/net/INetd;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mState:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    return-void

    :array_20
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 87
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 91
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 92
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    .line 93
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 94
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 95
    return-void
.end method

.method private enterRunningState()V
    .registers 2

    .line 200
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 201
    return-void
.end method

.method private enterStartingState(Ljava/lang/String;)V
    .registers 7

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6e

    .line 177
    nop

    .line 179
    const/4 v0, 0x0

    .line 181
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_13} :catch_14

    .line 184
    goto :goto_33

    .line 182
    :catch_14
    move-exception v1

    .line 183
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting clatd on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 187
    sget-object p1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 189
    :try_start_4d
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet6Address;

    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIPv6Address:Ljava/net/Inet6Address;
    :try_end_55
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_55} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_55} :catch_56
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_55} :catch_56

    .line 192
    goto :goto_6d

    .line 190
    :catch_56
    move-exception p1

    .line 191
    sget-object p1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_6d
    return-void

    .line 174
    :catch_6e
    move-exception p1

    .line 175
    sget-object p1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t register interface observer for clat on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 5

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 369
    :catch_b
    move-exception p1

    .line 370
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting link properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 6

    .line 393
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_68

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_68

    .line 397
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object p2

    .line 398
    if-nez p2, :cond_2e

    .line 399
    sget-object p2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clatAddress was null for stacked iface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 403
    :cond_2e
    sget-object p1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "interface %s is up, adding stacked link %s on top of %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterRunningState()V

    .line 406
    new-instance p1, Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p1, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 407
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 408
    iget-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 409
    return-void

    .line 394
    :cond_68
    :goto_68
    return-void
.end method

.method private handleInterfaceRemoved(Ljava/lang/String;)V
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 416
    return-void

    .line 418
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 419
    return-void

    .line 422
    :cond_10
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " removed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 428
    return-void
.end method

.method private leaveStartedState()V
    .registers 5

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 211
    goto :goto_27

    .line 209
    :catch_6
    move-exception v0

    .line 210
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering clatd observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 215
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 216
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    goto :goto_44

    .line 218
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 219
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 221
    :goto_44
    return-void
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .registers 7

    .line 348
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 357
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 359
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 361
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 362
    return-object v0
.end method

.method protected static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 109
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 114
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 115
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v2

    if-nez v2, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v4

    .line 118
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object p0

    iget-boolean p0, p0, Landroid/net/NetworkMisc;->skip464xlat:Z

    if-eqz p0, :cond_3d

    move p0, v3

    goto :goto_3e

    :cond_3d
    move p0, v4

    .line 120
    :goto_3e
    if-eqz v0, :cond_47

    if-eqz v1, :cond_47

    if-eqz v2, :cond_47

    if-nez p0, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    return v3
.end method

.method protected static shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 133
    invoke-static {p0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private startPrefixDiscovery()V
    .registers 5

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V

    .line 277
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_e

    .line 280
    goto :goto_31

    .line 278
    :catch_e
    move-exception v0

    .line 279
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_31
    return-void
.end method

.method private stopPrefixDiscovery()V
    .registers 5

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_a

    .line 288
    goto :goto_2d

    .line 286
    :catch_a
    move-exception v0

    .line 287
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_2d
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 332
    return-void

    .line 334
    :cond_c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 335
    return-void

    .line 338
    :cond_19
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clatd running, updating NAI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 340
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 341
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 342
    return-void

    .line 344
    :cond_55
    goto :goto_39

    .line 345
    :cond_56
    return-void
.end method

.method protected getNetId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public isPrefixDiscoveryStarted()Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isRunning()Z
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStarted()Z
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isStarting()Z
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public synthetic lambda$interfaceLinkStateChanged$0$Nat464Xlat(Ljava/lang/String;Z)V
    .registers 3

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$interfaceRemoved$1$Nat464Xlat(Ljava/lang/String;)V
    .registers 2

    .line 437
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public setNat64Prefix(Landroid/net/IpPrefix;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 321
    return-void
.end method

.method protected start()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_1e

    .line 231
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-nez v0, :cond_31

    .line 237
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat on null interface"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 241
    :cond_31
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStartingState(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected stop()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 248
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopClat: already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_f
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping clatd on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_27
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Landroid/os/ServiceSpecificException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 257
    goto :goto_50

    .line 255
    :catch_2f
    move-exception v0

    .line 256
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_50
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v1

    .line 265
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 267
    if-eqz v1, :cond_72

    .line 268
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 269
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 270
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 272
    :cond_72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 297
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 298
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->startPrefixDiscovery()V

    goto :goto_35

    .line 299
    :cond_12
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 304
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    goto :goto_35

    .line 307
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_35

    .line 311
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 312
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_35

    .line 313
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 314
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 317
    :cond_35
    :goto_35
    return-void
.end method
