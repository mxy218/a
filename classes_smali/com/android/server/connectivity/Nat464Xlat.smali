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

.field private static final xlatRequired:Ljava/lang/String; = "persist.vendor.net.doxlat"


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

    .line 52
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 66
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
    .param p1, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "netd"  # Landroid/net/INetd;
    .param p3, "dnsResolver"  # Landroid/net/IDnsResolver;
    .param p4, "nmService"  # Landroid/os/INetworkManagementService;

    .line 98
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 89
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 99
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 100
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    .line 101
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 103
    return-void
.end method

.method private enterRunningState()V
    .registers 2

    .line 219
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 220
    return-void
.end method

.method private enterStartingState(Ljava/lang/String;)V
    .registers 7
    .param p1, "baseIface"  # Ljava/lang/String;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6f

    .line 196
    nop

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "addrStr":Ljava/lang/String;
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 203
    goto :goto_34

    .line 201
    :catch_15
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
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

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 206
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 208
    :try_start_4e
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIPv6Address:Ljava/net/Inet6Address;
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_56} :catch_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_56} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_56} :catch_57

    .line 211
    goto :goto_6e

    .line 209
    :catch_57
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IPv6 address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_6e
    return-void

    .line 193
    .end local v0  # "addrStr":Ljava/lang/String;
    :catch_6f
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t register interface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 6
    .param p1, "iface"  # Ljava/lang/String;

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 387
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 388
    .end local v0  # "config":Landroid/net/InterfaceConfiguration;
    :catch_b
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting link properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 412
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_69

    if-eqz p2, :cond_69

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_69

    .line 416
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 417
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_2e

    .line 418
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clatAddress was null for stacked iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 422
    :cond_2e
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string/jumbo v3, "interface %s is up, adding stacked link %s on top of %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterRunningState()V

    .line 425
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 426
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 427
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 428
    return-void

    .line 413
    .end local v0  # "clatAddress":Landroid/net/LinkAddress;
    .end local v1  # "lp":Landroid/net/LinkProperties;
    :cond_69
    :goto_69
    return-void
.end method

.method private handleInterfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 435
    return-void

    .line 437
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 438
    return-void

    .line 441
    :cond_10
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 447
    return-void
.end method

.method private leaveStartedState()V
    .registers 5

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 230
    goto :goto_27

    .line 228
    :catch_6
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
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

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 234
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 235
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    goto :goto_44

    .line 237
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 238
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 240
    :goto_44
    return-void
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .registers 7
    .param p1, "clatAddress"  # Landroid/net/LinkAddress;

    .line 367
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 368
    .local v0, "stacked":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 376
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 378
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 379
    .local v1, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 380
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 381
    return-object v0
.end method

.method protected static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 13
    .param p0, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 117
    .local v0, "netType":I
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    .line 118
    .local v1, "supported":Z
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 122
    .local v2, "connected":Z
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 123
    .local v3, "lp":Landroid/net/LinkProperties;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 124
    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v6

    if-nez v6, :cond_32

    move v6, v4

    goto :goto_33

    :cond_32
    move v6, v5

    .line 127
    .local v6, "isIpv6OnlyNetwork":Z
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object v7

    if-eqz v7, :cond_43

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object v7

    iget-boolean v7, v7, Landroid/net/NetworkMisc;->skip464xlat:Z

    if-eqz v7, :cond_43

    move v7, v4

    goto :goto_44

    :cond_43
    move v7, v5

    .line 129
    .local v7, "skip464xlat":Z
    :goto_44
    const/4 v8, 0x1

    .line 130
    .local v8, "androidXlatEnabled":Z
    if-nez v0, :cond_63

    .line 131
    const-string/jumbo v9, "persist.vendor.net.doxlat"

    const-string/jumbo v10, "true"

    invoke-static {v9, v10}, Lcom/android/server/NetPluginDelegate;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "xlatConfigValue":Ljava/lang/String;
    if-eqz v9, :cond_63

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 133
    sget-object v10, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string v11, "Android Xlat is disabled"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v8, 0x0

    .line 138
    .end local v9  # "xlatConfigValue":Ljava/lang/String;
    :cond_63
    if-eqz v1, :cond_6e

    if-eqz v2, :cond_6e

    if-eqz v6, :cond_6e

    if-nez v7, :cond_6e

    if-eqz v8, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    return v4
.end method

.method protected static shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p0, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 152
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-static {p0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private startPrefixDiscovery()V
    .registers 5

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V

    .line 296
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_e

    .line 299
    goto :goto_31

    .line 297
    :catch_e
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
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

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method private stopPrefixDiscovery()V
    .registers 5

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_a

    .line 307
    goto :goto_2d

    .line 305
    :catch_a
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
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

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "oldLp"  # Landroid/net/LinkProperties;
    .param p2, "lp"  # Landroid/net/LinkProperties;

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 351
    return-void

    .line 353
    :cond_c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 354
    return-void

    .line 357
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

    .line 358
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 359
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 360
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 361
    return-void

    .line 363
    .end local v1  # "stacked":Landroid/net/LinkProperties;
    :cond_55
    goto :goto_39

    .line 364
    :cond_56
    return-void
.end method

.method protected getNetId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"  # Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method

.method public isPrefixDiscoveryStarted()Z
    .registers 3

    .line 161
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

    .line 183
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

    .line 169
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

    .line 176
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
    .param p1, "iface"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$interfaceRemoved$1$Nat464Xlat(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"  # Ljava/lang/String;

    .line 456
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public setNat64Prefix(Landroid/net/IpPrefix;)V
    .registers 2
    .param p1, "nat64Prefix"  # Landroid/net/IpPrefix;

    .line 339
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 340
    return-void
.end method

.method protected start()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 245
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 249
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_1e

    .line 250
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "baseIface":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 256
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 260
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

    .line 261
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStartingState(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method protected stop()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 267
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopClat: already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 271
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

    .line 273
    :try_start_27
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Landroid/os/ServiceSpecificException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 276
    goto :goto_50

    .line 274
    :catch_2f
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
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

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_50
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 279
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v1

    .line 284
    .local v1, "wasRunning":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 286
    if-eqz v1, :cond_72

    .line 287
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 288
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 289
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 291
    .end local v2  # "lp":Landroid/net/LinkProperties;
    :cond_72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseIface: "

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

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 316
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 317
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->startPrefixDiscovery()V

    goto :goto_35

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 323
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    goto :goto_35

    .line 326
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_35

    .line 330
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 331
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_35

    .line 332
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 333
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 336
    :cond_35
    :goto_35
    return-void
.end method
