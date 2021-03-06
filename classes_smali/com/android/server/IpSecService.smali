.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$UidFdTagger;,
        Lcom/android/server/IpSecService$EncapSocketRecord;,
        Lcom/android/server/IpSecService$TunnelInterfaceRecord;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$RefcountedResourceArray;,
        Lcom/android/server/IpSecService$OwnedResourceRecord;,
        Lcom/android/server/IpSecService$UserResourceTracker;,
        Lcom/android/server/IpSecService$UserRecord;,
        Lcom/android/server/IpSecService$ResourceTracker;,
        Lcom/android/server/IpSecService$RefcountedResource;,
        Lcom/android/server/IpSecService$IResource;,
        Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    }
.end annotation


# static fields
.field private static final ADDRESS_FAMILIES:[I

.field private static final DBG:Z

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field static final MAX_PORT_BIND_ATTEMPTS:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final NETD_FETCH_TIMEOUT_MS:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field private static final TUNNEL_OP:Ljava/lang/String; = "android:manage_ipsec_tunnels"

.field static final TUN_INTF_NETID_RANGE:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TUN_INTF_NETID_START:I = 0xfc00
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextResourceId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "IpSecService.this"
        }
    .end annotation
.end field

.field private mNextTunnelNetIdIndex:I

.field private final mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

.field private final mTunnelNetIds:Landroid/util/SparseBooleanArray;

.field final mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

.field final mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 93
    const/4 v0, 0x3

    const-string v1, "IpSecService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/IpSecService;->DBG:Z

    .line 96
    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Landroid/system/OsConstants;->AF_INET:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sput-object v2, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    .line 106
    const/4 v2, 0x4

    :try_start_19
    new-array v2, v2, [B

    aput-byte v4, v2, v4

    aput-byte v4, v2, v5

    aput-byte v4, v2, v1

    aput-byte v4, v2, v0

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_29} :catch_2b

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_2b
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 993
    sget-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V

    .line 994
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "config"  # Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1012
    sget-object v0, Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;->INSTANCE:Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V

    .line 1023
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "config"  # Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .param p3, "uidFdTagger"  # Lcom/android/server/IpSecService$UidFdTagger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1028
    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    .line 474
    new-instance v0, Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-direct {v0}, Lcom/android/server/IpSecService$UserResourceTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    .line 758
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 1029
    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    .line 1030
    iput-object p2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1031
    iput-object p3, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    .line 1032
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/IpSecService;

    .line 91
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-object v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    return-object v0
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)I
    .registers 8
    .param p1, "sockFd"  # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_4d

    .line 1170
    :try_start_4
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1171
    .local v1, "probeSocket":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 1172
    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 1173
    .local v2, "port":I
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 1174
    const-string v3, "IpSecService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    sget-object v3, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v3, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_3c} :catch_3d

    .line 1176
    return v2

    .line 1177
    .end local v1  # "probeSocket":Ljava/io/FileDescriptor;
    .end local v2  # "port":I
    :catch_3d
    move-exception v1

    .line 1179
    .local v1, "e":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_48

    .line 1180
    nop

    .line 1168
    .end local v1  # "e":Landroid/system/ErrnoException;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1182
    .restart local v1  # "e":Landroid/system/ErrnoException;
    :cond_48
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1185
    .end local v0  # "i":I
    .end local v1  # "e":Landroid/system/ErrnoException;
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed 10 attempts to bind to a port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkDirection(I)V
    .registers 4
    .param p0, "direction"  # I

    .line 1087
    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_1d

    .line 1092
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static checkInetAddress(Ljava/lang/String;)V
    .registers 5
    .param p0, "inetAddress"  # Ljava/lang/String;

    .line 1071
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1075
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1077
    .local v0, "checkAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1080
    return-void

    .line 1078
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inappropriate wildcard address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1072
    .end local v0  # "checkAddr":Ljava/net/InetAddress;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unspecified address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIpSecConfig(Landroid/net/IpSecConfig;)V
    .registers 11
    .param p1, "config"  # Landroid/net/IpSecConfig;

    .line 1469
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1471
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    if-eq v1, v2, :cond_32

    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    goto :goto_32

    .line 1486
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encap Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1477
    :cond_32
    :goto_32
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1478
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    .line 1477
    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    .line 1480
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    .line 1481
    .local v1, "port":I
    if-lez v1, :cond_47

    const v3, 0xffff

    if-gt v1, v3, :cond_47

    goto :goto_5f

    .line 1482
    :cond_47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remote UDP port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1473
    .end local v1  # "port":I
    :cond_5e
    nop

    .line 1489
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService;->validateAlgorithms(Landroid/net/IpSecConfig;)V

    .line 1492
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    .line 1495
    .local v1, "s":Lcom/android/server/IpSecService$SpiRecord;
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getOwnedByTransform()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 1500
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1501
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/IpSecConfig;->setDestinationAddress(Ljava/lang/String;)V

    .line 1505
    :cond_85
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 1512
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    .line 1519
    .local v3, "sourceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, "destinationAddress":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v5

    .line 1521
    .local v5, "sourceFamily":I
    invoke-direct {p0, v4}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v6

    .line 1522
    .local v6, "destinationFamily":I
    if-ne v5, v6, :cond_f3

    .line 1532
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v7

    if-eqz v7, :cond_c6

    sget v7, Landroid/system/OsConstants;->AF_INET:I

    if-ne v5, v7, :cond_be

    goto :goto_c6

    .line 1533
    :cond_be
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "UDP Encapsulation is not supported for this address family"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1537
    :cond_c6
    :goto_c6
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v7

    if-eqz v7, :cond_ea

    if-ne v7, v2, :cond_cf

    .line 1541
    goto :goto_eb

    .line 1543
    :cond_cf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid IpSecTransform.mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1539
    :cond_ea
    nop

    .line 1547
    :goto_eb
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setMarkValue(I)V

    .line 1548
    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setMarkMask(I)V

    .line 1549
    return-void

    .line 1523
    :cond_f3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source address ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") and destination address ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") have different address families."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1506
    .end local v3  # "sourceAddress":Ljava/lang/String;
    .end local v4  # "destinationAddress":Ljava/lang/String;
    .end local v5  # "sourceFamily":I
    .end local v6  # "destinationFamily":I
    :cond_117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mismatched remote addresseses."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1496
    :cond_11f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SPI already in use; cannot be used in new Transforms"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private connectNativeNetdService()V
    .registers 2

    .line 1044
    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    .line 1051
    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    .line 1052
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 997
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    .line 998
    .local v0, "service":Lcom/android/server/IpSecService;
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 999
    return-object v0
.end method

.method private createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .registers 34
    .param p1, "c"  # Landroid/net/IpSecConfig;
    .param p2, "resourceId"  # I
    .param p3, "spiRecord"  # Lcom/android/server/IpSecService$SpiRecord;
    .param p4, "socketRecord"  # Lcom/android/server/IpSecService$EncapSocketRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v22

    .local v22, "encapType":I
    const/4 v0, 0x0

    .local v0, "encapLocalPort":I
    const/4 v1, 0x0

    .line 1577
    .local v1, "encapRemotePort":I
    if-eqz v22, :cond_15

    .line 1578
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/IpSecService$EncapSocketRecord;->getPort()I

    move-result v0

    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_19

    .line 1577
    :cond_15
    move/from16 v23, v0

    move/from16 v24, v1

    .line 1582
    .end local v0  # "encapLocalPort":I
    .end local v1  # "encapRemotePort":I
    .local v23, "encapLocalPort":I
    .local v24, "encapRemotePort":I
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v25

    .line 1583
    .local v25, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v26

    .line 1584
    .local v26, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v27

    .line 1587
    .local v27, "authCrypt":Landroid/net/IpSecAlgorithm;
    const-string v0, ""

    if-nez v26, :cond_32

    .line 1588
    if-nez v27, :cond_2e

    const-string v1, "ecb(cipher_null)"

    goto :goto_2f

    :cond_2e
    move-object v1, v0

    :goto_2f
    move-object/from16 v28, v1

    .local v1, "cryptName":Ljava/lang/String;
    goto :goto_38

    .line 1590
    .end local v1  # "cryptName":Ljava/lang/String;
    :cond_32
    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 1593
    .local v28, "cryptName":Ljava/lang/String;
    :goto_38
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1594
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 1596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1597
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v3

    .line 1598
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v4

    .line 1599
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5e

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v6

    iget v6, v6, Landroid/net/Network;->netId:I

    goto :goto_5f

    :cond_5e
    move v6, v7

    .line 1601
    :goto_5f
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v8

    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v9

    .line 1603
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v10

    .line 1604
    if-eqz v25, :cond_72

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_73

    :cond_72
    move-object v11, v0

    .line 1605
    :goto_73
    if-eqz v25, :cond_7a

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v12

    goto :goto_7c

    :cond_7a
    new-array v12, v7, [B

    .line 1606
    :goto_7c
    if-eqz v25, :cond_83

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v13

    goto :goto_84

    :cond_83
    move v13, v7

    .line 1608
    :goto_84
    if-eqz v26, :cond_8b

    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v14

    goto :goto_8d

    :cond_8b
    new-array v14, v7, [B

    .line 1609
    :goto_8d
    if-eqz v26, :cond_94

    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v16

    goto :goto_96

    :cond_94
    move/from16 v16, v7

    .line 1610
    :goto_96
    if-eqz v27, :cond_9c

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_9c
    move-object/from16 v17, v0

    .line 1611
    if-eqz v27, :cond_a5

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v0

    goto :goto_a7

    :cond_a5
    new-array v0, v7, [B

    :goto_a7
    move-object/from16 v18, v0

    .line 1612
    if-eqz v27, :cond_b2

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v0

    move/from16 v19, v0

    goto :goto_b4

    :cond_b2
    move/from16 v19, v7

    .line 1616
    :goto_b4
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v21

    .line 1595
    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, v28

    move-object v13, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v24

    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 1617
    return-void
.end method

.method private enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1559
    const-string v0, "Null calling package cannot create IpSec tunnels"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-direct {p0}, Lcom/android/server/IpSecService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "android:manage_ipsec_tunnels"

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 1562
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    nop

    .line 1570
    return-void

    .line 1568
    :cond_31
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Request to ignore AppOps for non-legacy API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    :cond_39
    return-void

    .line 1555
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPsec Tunnel Mode requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 4

    .line 1004
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1005
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz v0, :cond_d

    .line 1006
    return-object v0

    .line 1005
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System Server couldn\'t get AppOps"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFamily(Ljava/lang/String;)I
    .registers 5
    .param p1, "inetAddress"  # Ljava/lang/String;

    .line 1454
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    .line 1455
    .local v0, "family":I
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1456
    .local v1, "checkAddress":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_d

    .line 1457
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_13

    .line 1458
    :cond_d
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_13

    .line 1459
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 1461
    :cond_13
    :goto_13
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"  # Ljava/io/FileDescriptor;
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 1018
    invoke-static {p0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 1020
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 1021
    nop

    .line 1022
    return-void

    .line 1020
    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    throw v0
.end method

.method private releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    .registers 4
    .param p1, "resArray"  # Lcom/android/server/IpSecService$RefcountedResourceArray;
    .param p2, "resourceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V

    .line 1144
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 10
    .param p1, "tunnelResourceId"  # I
    .param p2, "localAddr"  # Landroid/net/LinkAddress;
    .param p3, "callingPackage"  # Ljava/lang/String;

    monitor-enter p0

    .line 1366
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1371
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1372
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1377
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_16
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1378
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1380
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1381
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1379
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1385
    nop

    .line 1386
    monitor-exit p0

    return-void

    .line 1383
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :catch_32
    move-exception v2

    .line 1384
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1365
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1  # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2  # "e":Landroid/os/RemoteException;
    .end local p1  # "tunnelResourceId":I
    .end local p2  # "localAddr":Landroid/net/LinkAddress;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .registers 20
    .param p1, "destinationAddress"  # Ljava/lang/String;
    .param p2, "requestedSpi"  # I
    .param p3, "binder"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    monitor-enter p0

    .line 1099
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1101
    if-lez v8, :cond_19

    const/16 v0, 0x100

    if-lt v8, v0, :cond_11

    goto :goto_19

    .line 1102
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ESP SPI must not be in the range of 0-255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_19
    :goto_19
    const-string v0, "Null Binder passed to allocateSecurityParameterIndex"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v10, v0

    .line 1107
    .local v10, "callingUid":I
    iget-object v0, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v10}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v11, v0

    .line 1108
    .local v11, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v0, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_b2

    move v12, v0

    .line 1110
    .local v12, "resourceId":I
    const/4 v1, 0x0

    .line 1112
    .local v1, "spi":I
    const/4 v13, -0x1

    :try_start_33
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1113
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v13, v1}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_41
    .catch Landroid/os/ServiceSpecificException; {:try_start_33 .. :try_end_41} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_95
    .catchall {:try_start_33 .. :try_end_41} :catchall_b2

    monitor-exit p0

    return-object v0

    .line 1117
    :cond_43
    :try_start_43
    iget-object v0, v7, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1119
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    const-string v2, ""
    :try_end_4b
    .catch Landroid/os/ServiceSpecificException; {:try_start_43 .. :try_end_4b} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4b} :catch_95
    .catchall {:try_start_43 .. :try_end_4b} :catchall_b2

    .line 1120
    move-object/from16 v14, p1

    :try_start_4d
    invoke-interface {v0, v10, v2, v14, v8}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_51
    .catch Landroid/os/ServiceSpecificException; {:try_start_4d .. :try_end_51} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_51} :catch_91
    .catchall {:try_start_4d .. :try_end_51} :catchall_b2

    move v15, v0

    .line 1121
    .end local v1  # "spi":I
    .local v15, "spi":I
    :try_start_52
    const-string v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated SPI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v5, Lcom/android/server/IpSecService$SpiRecord;

    const-string v4, ""

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v12

    move-object v13, v5

    move-object/from16 v5, p1

    move-object v8, v6

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v8, v7, v13, v9, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v12, v8}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_85
    .catch Landroid/os/ServiceSpecificException; {:try_start_52 .. :try_end_85} :catch_8f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_85} :catch_8d
    .catchall {:try_start_52 .. :try_end_85} :catchall_b2

    .line 1134
    nop

    .line 1135
    :try_start_86
    new-instance v0, Landroid/net/IpSecSpiResponse;

    invoke-direct {v0, v1, v12, v15}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_b2

    monitor-exit p0

    return-object v0

    .line 1132
    :catch_8d
    move-exception v0

    goto :goto_99

    .line 1126
    :catch_8f
    move-exception v0

    goto :goto_a2

    .line 1132
    .end local v15  # "spi":I
    .restart local v1  # "spi":I
    :catch_91
    move-exception v0

    goto :goto_98

    .line 1126
    :catch_93
    move-exception v0

    goto :goto_a1

    .line 1132
    :catch_95
    move-exception v0

    move-object/from16 v14, p1

    :goto_98
    move v15, v1

    .line 1133
    .end local v1  # "spi":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15  # "spi":I
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1126
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v15  # "spi":I
    .restart local v1  # "spi":I
    :catch_9e
    move-exception v0

    move-object/from16 v14, p1

    :goto_a1
    move v15, v1

    .line 1127
    .end local v1  # "spi":I
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v15  # "spi":I
    :goto_a2
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    if-ne v1, v2, :cond_b1

    .line 1128
    new-instance v1, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v15}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_af
    .catchall {:try_start_99 .. :try_end_af} :catchall_b2

    monitor-exit p0

    return-object v1

    .line 1131
    :cond_b1
    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 1098
    .end local v0  # "e":Landroid/os/ServiceSpecificException;
    .end local v10  # "callingUid":I
    .end local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v12  # "resourceId":I
    .end local v15  # "spi":I
    .end local p1  # "destinationAddress":Ljava/lang/String;
    .end local p2  # "requestedSpi":I
    .end local p3  # "binder":Landroid/os/IBinder;
    :catchall_b2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    .registers 15
    .param p1, "socket"  # Landroid/os/ParcelFileDescriptor;
    .param p2, "direction"  # I
    .param p3, "resourceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1688
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1689
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v8, v1

    .line 1690
    .local v8, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-static {p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1692
    iget-object v1, v8, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TransformRecord;

    move-object v9, v1

    .line 1695
    .local v9, "info":Lcom/android/server/IpSecService$TransformRecord;
    iget v1, v9, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_56

    iget v1, v9, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    if-ne v1, v0, :cond_56

    .line 1700
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v1

    move-object v10, v1

    .line 1701
    .local v10, "c":Landroid/net/IpSecConfig;
    nop

    .line 1702
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    const-string v2, "Transform mode was not Transport mode; cannot be applied to a socket"

    .line 1701
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1705
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1706
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 1711
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v5

    .line 1712
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v6

    .line 1713
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v7

    .line 1707
    move-object v2, p1

    move v3, v0

    move v4, p2

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_5e

    .line 1714
    monitor-exit p0

    return-void

    .line 1696
    .end local v10  # "c":Landroid/net/IpSecConfig;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_56
    :try_start_56
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_5e

    .line 1687
    .end local v0  # "callingUid":I
    .end local v8  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v9  # "info":Lcom/android/server/IpSecService$TransformRecord;
    .end local p1  # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2  # "direction":I
    .end local p3  # "resourceId":I
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTunnelModeTransform(IIILjava/lang/String;)V
    .registers 32
    .param p1, "tunnelResourceId"  # I
    .param p2, "direction"  # I
    .param p3, "transformResourceId"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v12, p2

    move/from16 v13, p3

    monitor-enter p0

    .line 1738
    move-object/from16 v14, p4

    :try_start_9
    invoke-direct {v1, v14}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1739
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v15, v0

    .line 1742
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v11, v0

    .line 1745
    .local v11, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1746
    invoke-virtual {v0, v13}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v16, v0

    .line 1750
    .local v16, "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1751
    move/from16 v10, p1

    invoke-virtual {v0, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    move-object/from16 v17, v0

    .line 1754
    .local v17, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v0

    move-object v8, v0

    .line 1755
    .local v8, "c":Landroid/net/IpSecConfig;
    nop

    .line 1756
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    move v0, v3

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    const-string v4, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface"

    .line 1755
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1759
    const/4 v0, 0x0

    .line 1760
    .local v0, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 1761
    iget-object v4, v11, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1762
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v4

    check-cast v4, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v0, v4

    move-object v7, v0

    goto :goto_5e

    .line 1760
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_5d
    move-object v7, v0

    .line 1764
    .end local v0  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v7, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :goto_5e
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$SpiRecord;

    move-object v6, v0

    .line 1767
    .local v6, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    if-ne v12, v3, :cond_73

    .line 1768
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getOkey()I

    move-result v0

    move v9, v0

    goto :goto_78

    .line 1769
    :cond_73
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIkey()I

    move-result v0
    :try_end_77
    .catchall {:try_start_9 .. :try_end_77} :catchall_124

    move v9, v0

    :goto_78
    nop

    .line 1774
    .local v9, "mark":I
    const/4 v0, 0x0

    .line 1775
    .local v0, "spi":I
    :try_start_7a
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIfId()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/net/IpSecConfig;->setXfrmInterfaceId(I)V
    :try_end_81
    .catch Landroid/os/ServiceSpecificException; {:try_start_7a .. :try_end_81} :catch_10d
    .catchall {:try_start_7a .. :try_end_81} :catchall_124

    .line 1791
    if-ne v12, v3, :cond_9c

    .line 1793
    :try_start_83
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/net/IpSecConfig;->setNetwork(Landroid/net/Network;)V

    .line 1797
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v3
    :try_end_92
    .catch Landroid/os/ServiceSpecificException; {:try_start_83 .. :try_end_92} :catch_94
    .catchall {:try_start_83 .. :try_end_92} :catchall_124

    move v0, v3

    goto :goto_9c

    .line 1818
    .end local v0  # "spi":I
    :catch_94
    move-exception v0

    move-object v2, v6

    move-object v3, v7

    move-object v12, v8

    move-object/from16 v19, v11

    goto/16 :goto_113

    .line 1801
    .restart local v0  # "spi":I
    :cond_9c
    :goto_9c
    :try_start_9c
    sget-object v5, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v3, v5
    :try_end_9f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9c .. :try_end_9f} :catch_10d
    .catchall {:try_start_9c .. :try_end_9f} :catchall_124

    :goto_9f
    if-ge v2, v3, :cond_fa

    :try_start_a1
    aget v4, v5, v2

    .line 1802
    .local v4, "selAddrFamily":I
    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1803
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1808
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v19

    .line 1809
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    .line 1813
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v22
    :try_end_c1
    .catch Landroid/os/ServiceSpecificException; {:try_start_a1 .. :try_end_c1} :catch_f3
    .catchall {:try_start_a1 .. :try_end_c1} :catchall_124

    .line 1804
    move/from16 v23, v3

    move v3, v15

    move-object/from16 v24, v5

    move/from16 v5, p2

    move-object/from16 v25, v6

    .end local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v25, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v6, v19

    move-object/from16 v26, v7

    .end local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v26, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    move-object/from16 v7, v20

    move-object v12, v8

    .end local v8  # "c":Landroid/net/IpSecConfig;
    .local v12, "c":Landroid/net/IpSecConfig;
    move v8, v0

    move/from16 v10, v21

    move-object/from16 v19, v11

    .end local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v19, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v11, v22

    :try_start_d8
    invoke-interface/range {v2 .. v11}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_db
    .catch Landroid/os/ServiceSpecificException; {:try_start_d8 .. :try_end_db} :catch_ed
    .catchall {:try_start_d8 .. :try_end_db} :catchall_124

    .line 1801
    .end local v4  # "selAddrFamily":I
    add-int/lit8 v2, v18, 0x1

    move/from16 v10, p1

    move-object v8, v12

    move-object/from16 v11, v19

    move/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move/from16 v12, p2

    goto :goto_9f

    .line 1818
    .end local v0  # "spi":I
    :catch_ed
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_113

    .end local v12  # "c":Landroid/net/IpSecConfig;
    .end local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v25  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8  # "c":Landroid/net/IpSecConfig;
    .restart local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_f3
    move-exception v0

    move-object v12, v8

    move-object/from16 v19, v11

    move-object v2, v6

    move-object v3, v7

    .end local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8  # "c":Landroid/net/IpSecConfig;
    .end local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v12  # "c":Landroid/net/IpSecConfig;
    .restart local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v25  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v26  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    goto :goto_113

    .line 1817
    .end local v12  # "c":Landroid/net/IpSecConfig;
    .end local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v25  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v0  # "spi":I
    .restart local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8  # "c":Landroid/net/IpSecConfig;
    .restart local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :cond_fa
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move-object/from16 v19, v11

    .end local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8  # "c":Landroid/net/IpSecConfig;
    .end local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v12  # "c":Landroid/net/IpSecConfig;
    .restart local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v25  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v26  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    move-object/from16 v2, v25

    move-object/from16 v3, v26

    .end local v25  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v2, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v3, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :try_start_105
    invoke-direct {v1, v12, v13, v2, v3}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    :try_end_108
    .catch Landroid/os/ServiceSpecificException; {:try_start_105 .. :try_end_108} :catch_10b
    .catchall {:try_start_105 .. :try_end_108} :catchall_124

    .line 1824
    .end local v0  # "spi":I
    nop

    .line 1825
    monitor-exit p0

    return-void

    .line 1818
    :catch_10b
    move-exception v0

    goto :goto_113

    .end local v2  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v3  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v12  # "c":Landroid/net/IpSecConfig;
    .end local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8  # "c":Landroid/net/IpSecConfig;
    .restart local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_10d
    move-exception v0

    move-object v2, v6

    move-object v3, v7

    move-object v12, v8

    move-object/from16 v19, v11

    .line 1819
    .end local v6  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8  # "c":Landroid/net/IpSecConfig;
    .end local v11  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v2  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v3  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v12  # "c":Landroid/net/IpSecConfig;
    .restart local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :goto_113
    :try_start_113
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v5, Landroid/system/OsConstants;->EINVAL:I

    if-ne v4, v5, :cond_123

    .line 1820
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1822
    :cond_123
    throw v0
    :try_end_124
    .catchall {:try_start_113 .. :try_end_124} :catchall_124

    .line 1737
    .end local v0  # "e":Landroid/os/ServiceSpecificException;
    .end local v2  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v3  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v9  # "mark":I
    .end local v12  # "c":Landroid/net/IpSecConfig;
    .end local v15  # "callingUid":I
    .end local v16  # "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    .end local v17  # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v19  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1  # "tunnelResourceId":I
    .end local p2  # "direction":I
    .end local p3  # "transformResourceId":I
    .end local p4  # "callingPackage":Ljava/lang/String;
    :catchall_124
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeUdpEncapsulationSocket(I)V
    .registers 4
    .param p1, "resourceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1267
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1268
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1269
    monitor-exit p0

    return-void

    .line 1266
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .end local p1  # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .registers 22
    .param p1, "c"  # Landroid/net/IpSecConfig;
    .param p2, "binder"  # Landroid/os/IBinder;
    .param p3, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1628
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 1630
    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    goto :goto_17

    .line 1629
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_15
    move-object/from16 v8, p3

    .line 1632
    :goto_17
    invoke-direct/range {p0 .. p1}, Lcom/android/server/IpSecService;->checkIpSecConfig(Landroid/net/IpSecConfig;)V

    .line 1633
    const-string v1, "Null Binder passed to createTransform"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v1

    .line 1636
    .local v9, "resourceId":I
    iget-object v1, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v10, v1

    .line 1637
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 1639
    .local v11, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_46

    .line 1640
    new-instance v1, Landroid/net/IpSecTransformResponse;

    invoke-direct {v1, v2}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_b0

    monitor-exit p0

    return-object v1

    .line 1643
    :cond_46
    const/4 v1, 0x0

    .line 1644
    .local v1, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v2

    if-eqz v2, :cond_63

    .line 1645
    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1647
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    .line 1646
    invoke-virtual {v2, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v2

    .line 1648
    .local v2, "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    invoke-virtual {v2}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    check-cast v3, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v1, v3

    move-object v12, v1

    goto :goto_64

    .line 1644
    .end local v2  # "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    :cond_63
    move-object v12, v1

    .line 1652
    .end local v1  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v12, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :goto_64
    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    move-object v13, v1

    .line 1654
    .local v13, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    invoke-virtual {v13}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    move-object v14, v1

    .line 1657
    .local v14, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v15, p1

    invoke-direct {v7, v15, v9, v14, v12}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1660
    iget-object v6, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v5, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v4, Lcom/android/server/IpSecService$TransformRecord;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v9

    move-object v8, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v10

    move-object v10, v5

    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v16, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move-object v5, v14

    move-object/from16 v17, v13

    move-object v13, v6

    .end local v13  # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .local v17, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1665
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v10, v7, v8, v0, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    .line 1660
    invoke-virtual {v13, v9, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1666
    new-instance v1, Landroid/net/IpSecTransformResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_ae
    .catchall {:try_start_47 .. :try_end_ae} :catchall_b0

    monitor-exit p0

    return-object v1

    .line 1627
    .end local v9  # "resourceId":I
    .end local v11  # "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    .end local v12  # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v14  # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v17  # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .end local p1  # "c":Landroid/net/IpSecConfig;
    .end local p2  # "binder":Landroid/os/IBinder;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :catchall_b0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;
    .registers 39
    .param p1, "localAddr"  # Ljava/lang/String;
    .param p2, "remoteAddr"  # Ljava/lang/String;
    .param p3, "underlyingNetwork"  # Landroid/net/Network;
    .param p4, "binder"  # Landroid/os/IBinder;
    .param p5, "callingPackage"  # Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    monitor-enter p0

    .line 1280
    move-object/from16 v13, p5

    :try_start_7
    invoke-direct {v11, v13}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1281
    const-string v0, "Null Binder passed to createTunnelInterface"

    invoke-static {v12, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v0, "No underlying network was specified"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1284
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v15, v0

    .line 1290
    .local v15, "callerUid":I
    iget-object v0, v11, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v10, v0

    .line 1291
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v10, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_38

    .line 1292
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;

    invoke-direct {v0, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(I)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_1c4

    monitor-exit p0

    return-object v0

    .line 1295
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_38
    :try_start_38
    iget v0, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v0

    .line 1296
    .local v9, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v8, v0

    .line 1297
    .local v8, "ikey":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v7, v0

    .line 1298
    .local v7, "okey":I
    const-string v0, "%s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ipsec"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_38 .. :try_end_5e} :catchall_1c4

    move-object v5, v0

    .line 1305
    .local v5, "intfName":Ljava/lang/String;
    :try_start_5f
    iget-object v0, v11, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_61} :catch_1b0
    .catchall {:try_start_5f .. :try_end_61} :catchall_19a

    :try_start_61
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v25

    .line 1306
    .local v25, "netd":Landroid/net/INetd;
    move-object/from16 v26, v5

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move/from16 v29, v8

    move/from16 v30, v7

    move/from16 v31, v9

    invoke-interface/range {v25 .. v31}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1308
    sget-object v0, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v4, v0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_77} :catch_190
    .catchall {:try_start_61 .. :try_end_77} :catchall_19a

    move v2, v6

    :goto_78
    if-ge v2, v4, :cond_117

    :try_start_7a
    aget v3, v0, v2
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7c} :catch_10c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_ff

    .line 1310
    .local v3, "selAddrFamily":I
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v1, v25

    move/from16 v26, v2

    move v2, v15

    move/from16 v27, v4

    move/from16 v4, v16

    move-object/from16 v28, v5

    .end local v5  # "intfName":Ljava/lang/String;
    .local v28, "intfName":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v29, v7

    .end local v7  # "okey":I
    .local v29, "okey":I
    move/from16 v7, v17

    move/from16 v30, v8

    .end local v8  # "ikey":I
    .local v30, "ikey":I
    move/from16 v8, v29

    move/from16 v31, v9

    .end local v9  # "resourceId":I
    .local v31, "resourceId":I
    move/from16 v9, v18

    move-object v13, v10

    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v13, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v10, v31

    :try_start_a0
    invoke-interface/range {v1 .. v10}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a3} :catch_f0
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_e5

    .line 1320
    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    move/from16 v32, v15

    .end local v15  # "callerUid":I
    .local v32, "callerUid":I
    move-object/from16 v15, v25

    move/from16 v16, v32

    move/from16 v17, v3

    move-object/from16 v19, p2

    move-object/from16 v20, p1

    move/from16 v22, v30

    move/from16 v24, v31

    :try_start_b9
    invoke-interface/range {v15 .. v24}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_d8
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_cf

    .line 1308
    .end local v3  # "selAddrFamily":I
    add-int/lit8 v2, v26, 0x1

    move-object v10, v13

    move/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v15, v32

    const/4 v6, 0x0

    move-object/from16 v13, p5

    goto :goto_78

    .line 1351
    .end local v25  # "netd":Landroid/net/INetd;
    :catchall_cf
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    goto/16 :goto_1a5

    .line 1346
    :catch_d8
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    move/from16 v2, v31

    goto/16 :goto_1b9

    .line 1351
    .end local v32  # "callerUid":I
    .restart local v15  # "callerUid":I
    :catchall_e5
    move-exception v0

    move/from16 v32, v15

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v15  # "callerUid":I
    .restart local v32  # "callerUid":I
    goto/16 :goto_1a5

    .line 1346
    .end local v32  # "callerUid":I
    .restart local v15  # "callerUid":I
    :catch_f0
    move-exception v0

    move/from16 v32, v15

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    move/from16 v2, v31

    .end local v15  # "callerUid":I
    .restart local v32  # "callerUid":I
    goto/16 :goto_1b9

    .line 1351
    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28  # "intfName":Ljava/lang/String;
    .end local v29  # "okey":I
    .end local v30  # "ikey":I
    .end local v31  # "resourceId":I
    .end local v32  # "callerUid":I
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    :catchall_ff
    move-exception v0

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v32, v15

    move-object v3, v5

    move v2, v9

    move-object/from16 v16, v10

    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .restart local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v29  # "okey":I
    .restart local v30  # "ikey":I
    .restart local v31  # "resourceId":I
    .restart local v32  # "callerUid":I
    goto/16 :goto_1a5

    .line 1346
    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28  # "intfName":Ljava/lang/String;
    .end local v29  # "okey":I
    .end local v30  # "ikey":I
    .end local v31  # "resourceId":I
    .end local v32  # "callerUid":I
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    :catch_10c
    move-exception v0

    move/from16 v32, v15

    move-object v3, v5

    move v4, v7

    move v1, v8

    move v2, v9

    move-object/from16 v16, v10

    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .restart local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v29  # "okey":I
    .restart local v30  # "ikey":I
    .restart local v31  # "resourceId":I
    .restart local v32  # "callerUid":I
    goto/16 :goto_1b9

    .line 1332
    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28  # "intfName":Ljava/lang/String;
    .end local v29  # "okey":I
    .end local v30  # "ikey":I
    .end local v31  # "resourceId":I
    .end local v32  # "callerUid":I
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    .restart local v25  # "netd":Landroid/net/INetd;
    :cond_117
    move-object/from16 v28, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v9

    move-object v13, v10

    move/from16 v32, v15

    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .restart local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v29  # "okey":I
    .restart local v30  # "ikey":I
    .restart local v31  # "resourceId":I
    .restart local v32  # "callerUid":I
    :try_start_122
    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v15, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v10, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_128} :catch_184
    .catchall {:try_start_122 .. :try_end_128} :catchall_17c

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, v31

    move-object/from16 v4, v28

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, v30

    move/from16 v9, v29

    move-object/from16 v16, v13

    move-object v13, v10

    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v16, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v10, v31

    :try_start_13e
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v15, v11, v13, v12, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_147} :catch_172
    .catchall {:try_start_13e .. :try_end_147} :catchall_16c

    move/from16 v2, v31

    .end local v31  # "resourceId":I
    .local v2, "resourceId":I
    :try_start_149
    invoke-virtual {v0, v2, v15}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1345
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_14e} :catch_163
    .catchall {:try_start_149 .. :try_end_14e} :catchall_15f

    move-object/from16 v3, v28

    .end local v28  # "intfName":Ljava/lang/String;
    .local v3, "intfName":Ljava/lang/String;
    :try_start_150
    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(IILjava/lang/String;)V
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_153} :catch_158
    .catchall {:try_start_150 .. :try_end_153} :catchall_155

    monitor-exit p0

    return-object v0

    .line 1351
    .end local v25  # "netd":Landroid/net/INetd;
    .restart local p0  # "this":Lcom/android/server/IpSecService;
    :catchall_155
    move-exception v0

    goto/16 :goto_1a5

    .line 1346
    :catch_158
    move-exception v0

    move/from16 v4, v29

    move/from16 v1, v30

    goto/16 :goto_1b9

    .line 1351
    .end local v3  # "intfName":Ljava/lang/String;
    .restart local v28  # "intfName":Ljava/lang/String;
    :catchall_15f
    move-exception v0

    move-object/from16 v3, v28

    .end local v28  # "intfName":Ljava/lang/String;
    .restart local v3  # "intfName":Ljava/lang/String;
    goto :goto_1a5

    .line 1346
    .end local v3  # "intfName":Ljava/lang/String;
    .restart local v28  # "intfName":Ljava/lang/String;
    :catch_163
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v28  # "intfName":Ljava/lang/String;
    .restart local v3  # "intfName":Ljava/lang/String;
    goto/16 :goto_1b9

    .line 1351
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v31  # "resourceId":I
    :catchall_16c
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v28  # "intfName":Ljava/lang/String;
    .end local v31  # "resourceId":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    goto :goto_1a5

    .line 1346
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v31  # "resourceId":I
    :catch_172
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v2, v31

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v28  # "intfName":Ljava/lang/String;
    .end local v31  # "resourceId":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    goto :goto_1b9

    .line 1351
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v31  # "resourceId":I
    :catchall_17c
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28  # "intfName":Ljava/lang/String;
    .end local v31  # "resourceId":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    .restart local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_1a5

    .line 1346
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28  # "intfName":Ljava/lang/String;
    .restart local v31  # "resourceId":I
    :catch_184
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v13  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28  # "intfName":Ljava/lang/String;
    .end local v31  # "resourceId":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    .restart local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_1b9

    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v29  # "okey":I
    .end local v30  # "ikey":I
    .end local v32  # "callerUid":I
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    :catch_190
    move-exception v0

    move-object v3, v5

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    move v4, v7

    move v1, v8

    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    .restart local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v29  # "okey":I
    .restart local v30  # "ikey":I
    .restart local v32  # "callerUid":I
    goto :goto_1b9

    .line 1351
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v29  # "okey":I
    .end local v30  # "ikey":I
    .end local v32  # "callerUid":I
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    :catchall_19a
    move-exception v0

    move-object v3, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    .line 1353
    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    .restart local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v29  # "okey":I
    .restart local v30  # "ikey":I
    .restart local v32  # "callerUid":I
    :goto_1a5
    move/from16 v1, v30

    .end local v30  # "ikey":I
    .local v1, "ikey":I
    :try_start_1a7
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1354
    move/from16 v4, v29

    .end local v29  # "okey":I
    .local v4, "okey":I
    invoke-virtual {v11, v4}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1355
    throw v0

    .line 1346
    .end local v0  # "t":Ljava/lang/Throwable;
    .end local v1  # "ikey":I
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v4  # "okey":I
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v32  # "callerUid":I
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .restart local v5  # "intfName":Ljava/lang/String;
    .restart local v7  # "okey":I
    .restart local v8  # "ikey":I
    .restart local v9  # "resourceId":I
    .restart local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15  # "callerUid":I
    :catch_1b0
    move-exception v0

    move-object v3, v5

    move v4, v7

    move v1, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    .line 1348
    .end local v5  # "intfName":Ljava/lang/String;
    .end local v7  # "okey":I
    .end local v8  # "ikey":I
    .end local v9  # "resourceId":I
    .end local v10  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15  # "callerUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1  # "ikey":I
    .restart local v2  # "resourceId":I
    .restart local v3  # "intfName":Ljava/lang/String;
    .restart local v4  # "okey":I
    .restart local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v32  # "callerUid":I
    :goto_1b9
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1349
    invoke-virtual {v11, v4}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_1c4
    .catchall {:try_start_1a7 .. :try_end_1c4} :catchall_1c4

    .line 1279
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v1  # "ikey":I
    .end local v2  # "resourceId":I
    .end local v3  # "intfName":Ljava/lang/String;
    .end local v4  # "okey":I
    .end local v16  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v32  # "callerUid":I
    .end local p1  # "localAddr":Ljava/lang/String;
    .end local p2  # "remoteAddr":Ljava/lang/String;
    .end local p3  # "underlyingNetwork":Landroid/net/Network;
    .end local p4  # "binder":Landroid/os/IBinder;
    .end local p5  # "callingPackage":Ljava/lang/String;
    :catchall_1c4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTransform(I)V
    .registers 4
    .param p1, "resourceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1677
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1678
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1679
    monitor-exit p0

    return-void

    .line 1676
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .end local p1  # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteTunnelInterface(ILjava/lang/String;)V
    .registers 5
    .param p1, "resourceId"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1424
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1426
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1427
    monitor-exit p0

    return-void

    .line 1423
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .end local p1  # "resourceId":I
    .end local p2  # "callingPackage":Ljava/lang/String;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    monitor-enter p0

    .line 1829
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v0, "IpSecService dump:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "alive"

    goto :goto_24

    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_22
    const-string v1, "dead"

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1835
    const-string/jumbo v0, "mUserResourceTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 1837
    monitor-exit p0

    return-void

    .line 1828
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isNetdAlive()Z
    .registers 3

    monitor-enter p0

    .line 1056
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4} :catch_17
    .catchall {:try_start_2 .. :try_end_4} :catchall_14

    :try_start_4
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_12
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 1057
    .local v1, "netd":Landroid/net/INetd;
    if-nez v1, :cond_c

    .line 1058
    monitor-exit p0

    return v0

    .line 1060
    :cond_c
    :try_start_c
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    monitor-exit p0

    return v0

    .line 1061
    .end local v1  # "netd":Landroid/net/INetd;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :catch_12
    move-exception v1

    goto :goto_18

    .line 1055
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1061
    .restart local p0  # "this":Lcom/android/server/IpSecService;
    :catch_17
    move-exception v1

    .line 1062
    .local v1, "re":Landroid/os/RemoteException;
    :goto_18
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .registers 13
    .param p1, "port"  # I
    .param p2, "binder"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1217
    if-eqz p1, :cond_15

    const/16 v0, 0x400

    if-lt p1, v0, :cond_d

    const v0, 0xffff

    if-gt p1, v0, :cond_d

    goto :goto_15

    .line 1218
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :cond_15
    :goto_15
    const-string v0, "Null Binder passed to openUdpEncapsulationSocket"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    .line 1225
    .local v1, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_a9

    .line 1226
    .local v2, "resourceId":I
    const/4 v3, 0x0

    .line 1228
    .local v3, "sockFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    :try_start_2c
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v5}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1229
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_9e
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_39} :catch_9e
    .catchall {:try_start_2c .. :try_end_39} :catchall_a9

    monitor-exit p0

    return-object v5

    .line 1232
    :cond_3b
    :try_start_3b
    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v3, v5

    .line 1233
    iget-object v5, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    invoke-interface {v5, v3, v0}, Lcom/android/server/IpSecService$UidFdTagger;->tag(Ljava/io/FileDescriptor;I)V

    .line 1236
    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    sget v6, Landroid/system/OsConstants;->UDP_ENCAP:I

    sget v7, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    invoke-static {v3, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 1242
    iget-object v5, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v5}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v5

    new-instance v6, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v6, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-interface {v5, v6, v0}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 1244
    if-eqz p1, :cond_80

    .line 1245
    const-string v5, "IpSecService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v5, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v3, v5, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    goto :goto_85

    .line 1248
    :cond_80
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)I

    move-result v5

    move p1, v5

    .line 1251
    :goto_85
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v7, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/android/server/IpSecService$EncapSocketRecord;-><init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v6, p0, v7, p2, v9}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1255
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v8, v2, p1, v3}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_9c} :catch_9e
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_9c} :catch_9e
    .catchall {:try_start_3b .. :try_end_9c} :catchall_a9

    monitor-exit p0

    return-object v5

    .line 1256
    :catch_9e
    move-exception v5

    .line 1257
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1261
    .end local v5  # "e":Ljava/lang/Exception;
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_a9

    monitor-exit p0

    return-object v5

    .line 1216
    .end local v0  # "callingUid":I
    .end local v1  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v2  # "resourceId":I
    .end local v3  # "sockFd":Ljava/io/FileDescriptor;
    .end local p1  # "port":I
    .end local p2  # "binder":Landroid/os/IBinder;
    :catchall_a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseNetId(I)V
    .registers 4
    .param p1, "netId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 790
    monitor-exit v0

    .line 791
    return-void

    .line 790
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public declared-synchronized releaseSecurityParameterIndex(I)V
    .registers 4
    .param p1, "resourceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1150
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1151
    monitor-exit p0

    return-void

    .line 1148
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .end local p1  # "resourceId":I
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 10
    .param p1, "tunnelResourceId"  # I
    .param p2, "localAddr"  # Landroid/net/LinkAddress;
    .param p3, "callingPackage"  # Ljava/lang/String;

    monitor-enter p0

    .line 1395
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1400
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1401
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1406
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_16
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1407
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1409
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1410
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1411
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1408
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1414
    nop

    .line 1415
    monitor-exit p0

    return-void

    .line 1412
    .end local p0  # "this":Lcom/android/server/IpSecService;
    :catch_32
    move-exception v2

    .line 1413
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_33
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1394
    .end local v0  # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1  # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2  # "e":Landroid/os/RemoteException;
    .end local p1  # "tunnelResourceId":I
    .end local p2  # "localAddr":Landroid/net/LinkAddress;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "socket"  # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1725
    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1726
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 1727
    invoke-interface {v0, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1728
    monitor-exit p0

    return-void

    .line 1724
    .end local p0  # "this":Lcom/android/server/IpSecService;
    .end local p1  # "socket":Landroid/os/ParcelFileDescriptor;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method reserveNetId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/16 v2, 0x400

    if-ge v1, v2, :cond_2b

    .line 774
    :try_start_8
    iget v3, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 775
    .local v3, "index":I
    const v4, 0xfc00

    add-int/2addr v4, v3

    .line 776
    .local v4, "netId":I
    iget v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    if-lt v5, v2, :cond_19

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 777
    :cond_19
    iget-object v2, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 778
    iget-object v2, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 779
    monitor-exit v0

    return v4

    .line 773
    .end local v3  # "index":I
    .end local v4  # "netId":I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 782
    .end local v1  # "i":I
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_34

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds to allocate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public systemReady()V
    .registers 3

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    const-string v1, "IpSecService"

    if-eqz v0, :cond_e

    .line 1036
    const-string v0, "IpSecService is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1038
    :cond_e
    const-string v0, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_13
    return-void
.end method

.method validateAlgorithms(Landroid/net/IpSecConfig;)V
    .registers 9
    .param p1, "config"  # Landroid/net/IpSecConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v0

    .line 1432
    .local v0, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 1433
    .local v1, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v2

    .line 1436
    .local v2, "aead":Landroid/net/IpSecAlgorithm;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v5, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v5, v4

    :goto_18
    const-string v6, "No Encryption or Authentication algorithms specified"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1439
    if-eqz v0, :cond_28

    .line 1440
    invoke-virtual {v0}, Landroid/net/IpSecAlgorithm;->isAuthentication()Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_28

    :cond_26
    move v5, v3

    goto :goto_29

    :cond_28
    :goto_28
    move v5, v4

    .line 1439
    :goto_29
    const-string v6, "Unsupported algorithm for Authentication"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1442
    if-eqz v1, :cond_39

    .line 1443
    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->isEncryption()Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_39

    :cond_37
    move v5, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v4

    .line 1442
    :goto_3a
    const-string v6, "Unsupported algorithm for Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1444
    if-eqz v2, :cond_4a

    .line 1445
    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->isAead()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_4a

    :cond_48
    move v5, v3

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v5, v4

    .line 1444
    :goto_4b
    const-string v6, "Unsupported algorithm for Authenticated Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1447
    if-eqz v2, :cond_56

    if-nez v0, :cond_57

    if-nez v1, :cond_57

    :cond_56
    move v3, v4

    :cond_57
    const-string v4, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1451
    return-void
.end method
