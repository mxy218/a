.class Lcom/android/server/TestNetworkService;
.super Landroid/net/ITestNetworkManager$Stub;
.source "TestNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TestNetworkService$TestNetworkAgent;
    }
.end annotation


# static fields
.field private static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.MANAGE_TEST_NETWORKS"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_NETWORK_TYPE:Ljava/lang/String; = "TEST_NETWORK"

.field private static final TEST_TAP_PREFIX:Ljava/lang/String; = "testtap"

.field private static final TEST_TUN_PREFIX:Ljava/lang/String; = "testtun"

.field private static final sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private final mTestNetworkTracker:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTestNetworkTracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TestNetworkService$TestNetworkAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/android/server/TestNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TestNetworkService;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/TestNetworkService;->sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Landroid/net/ITestNetworkManager$Stub;-><init>()V

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TestNetworkServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 83
    const-string v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 84
    const-string p1, "missing INetworkManagementService"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/INetworkManagementService;

    iput-object p1, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    .line 85
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p1

    const-string p2, "could not get netd instance"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/INetd;

    iput-object p1, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    return-object p0
.end method

.method private createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 97
    const-string v0, "missing linkAddrs"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_10

    const-string/jumbo v0, "testtun"

    goto :goto_13

    :cond_10
    const-string/jumbo v0, "testtap"

    .line 100
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/TestNetworkService;->sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;-><init>(Lcom/android/server/TestNetworkService;ZLjava/lang/String;[Landroid/net/LinkAddress;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TestNetworkInterface;

    return-object p1
.end method

.method public static enforceTestNetworkPermissions(Landroid/content/Context;)V
    .registers 3

    .line 355
    const-string v0, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v1, "TestNetworkService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private static native jniCreateTunTap(ZLjava/lang/String;)I
.end method

.method private registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 232
    move-object/from16 v0, p3

    const-string v1, "missing Looper"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "missing Context"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v6, Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    const/16 v2, 0x12

    const-string v3, "TEST_NETWORK"

    const-string v7, ""

    invoke-direct {v6, v2, v1, v3, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 242
    new-instance v7, Landroid/net/NetworkCapabilities;

    invoke-direct {v7}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 243
    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 244
    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 245
    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 246
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 247
    new-instance v8, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v8, v0}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 250
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 251
    invoke-virtual {v8, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 254
    nop

    .line 255
    invoke-static/range {p3 .. p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v9

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No such network interface found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v1

    move v11, v10

    :goto_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InterfaceAddress;

    .line 259
    new-instance v13, Landroid/net/LinkAddress;

    .line 260
    invoke-virtual {v12}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 259
    invoke-virtual {v8, v13}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 262
    invoke-virtual {v12}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet6Address;

    if-eqz v13, :cond_9e

    .line 263
    invoke-virtual {v12}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v12

    xor-int/2addr v12, v2

    or-int/2addr v11, v12

    goto :goto_a7

    .line 264
    :cond_9e
    invoke-virtual {v12}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    instance-of v12, v12, Ljava/net/Inet4Address;

    if-eqz v12, :cond_a7

    .line 265
    move v10, v2

    .line 267
    :cond_a7
    :goto_a7
    goto :goto_6f

    .line 270
    :cond_a8
    if-eqz v10, :cond_b9

    .line 271
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v9, Landroid/net/IpPrefix;

    sget-object v10, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v9, v10, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v2, v9, v3, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 273
    :cond_b9
    if-eqz v11, :cond_ca

    .line 274
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v9, Landroid/net/IpPrefix;

    sget-object v10, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v9, v10, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v2, v9, v3, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 277
    :cond_ca
    new-instance v0, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    const/4 v11, 0x0

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/android/server/TestNetworkService$TestNetworkAgent;-><init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V

    return-object v0
.end method


# virtual methods
.method public createTapInterface()Landroid/net/TestNetworkInterface;
    .registers 3

    .line 139
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/LinkAddress;

    invoke-direct {p0, v0, v1}, Lcom/android/server/TestNetworkService;->createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .registers 3

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/TestNetworkService;->createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$createInterface$0$TestNetworkService(ZLjava/lang/String;[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    nop

    .line 105
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/TestNetworkService;->jniCreateTunTap(ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 106
    array-length v0, p3

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_23

    aget-object v2, p3, v1

    .line 107
    iget-object v3, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 109
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 107
    invoke-interface {v3, p2, v4, v2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 113
    :cond_23
    new-instance p3, Landroid/net/TestNetworkInterface;

    invoke-direct {p3, p1, p2}, Landroid/net/TestNetworkInterface;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_29

    return-object p3

    .line 114
    :catch_29
    move-exception p1

    .line 115
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic lambda$setupTestNetwork$1$TestNetworkService(Ljava/lang/String;ILandroid/os/IBinder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25

    .line 313
    :try_start_8
    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 315
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 314
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/TestNetworkService;->registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;

    move-result-object p1

    .line 321
    iget-object p2, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    iget p3, p1, Lcom/android/server/TestNetworkService$TestNetworkAgent;->netId:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    monitor-exit v0

    .line 327
    nop

    .line 328
    return-void

    .line 322
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    :try_start_24
    throw p1
    :try_end_25
    .catch Ljava/net/SocketException; {:try_start_24 .. :try_end_25} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 325
    :catch_25
    move-exception p1

    .line 326
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 323
    :catch_2b
    move-exception p1

    .line 324
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 290
    const-string v0, "missing Iface"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "missing IBinder"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "ipsec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 294
    const-string/jumbo v0, "testtun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_29

    .line 295
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create network for non ipsec, non-testtun interface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 301
    new-instance v1, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;-><init>(Lcom/android/server/TestNetworkService;Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 329
    return-void
.end method

.method public teardownTestNetwork(I)V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v0

    .line 338
    :try_start_8
    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    .line 339
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2a

    .line 341
    if-nez p1, :cond_14

    .line 342
    return-void

    .line 343
    :cond_14
    invoke-static {p1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 348
    invoke-static {p1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V

    .line 349
    return-void

    .line 344
    :cond_22
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Attempted to modify other user\'s test networks"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method
