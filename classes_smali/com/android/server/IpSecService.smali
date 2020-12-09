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
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 993
    sget-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V

    .line 994
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V
    .registers 4
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
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-object p0
.end method

.method static synthetic access$100()[I
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    return-object v0
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/16 v0, 0xa

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
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 1174
    const-string v1, "IpSecService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    sget-object v1, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_3c} :catch_3d

    .line 1176
    return v2

    .line 1177
    :catch_3d
    move-exception v1

    .line 1179
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_48

    .line 1180
    nop

    .line 1168
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1182
    :cond_48
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 1185
    :cond_4d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed 10 attempts to bind to a port"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkDirection(I)V
    .registers 4

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

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static checkInetAddress(Ljava/lang/String;)V
    .registers 4

    .line 1071
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1075
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1080
    return-void

    .line 1078
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inappropriate wildcard address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unspecified address"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkIpSecConfig(Landroid/net/IpSecConfig;)V
    .registers 7

    .line 1469
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1471
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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Encap Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    if-lez v1, :cond_47

    const v3, 0xffff

    if-gt v1, v3, :cond_47

    goto :goto_5f

    .line 1482
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid remote UDP port: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1473
    :cond_5e
    nop

    .line 1489
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService;->validateAlgorithms(Landroid/net/IpSecConfig;)V

    .line 1492
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$SpiRecord;

    .line 1495
    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getOwnedByTransform()Z

    move-result v1

    if-nez v1, :cond_11f

    .line 1500
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/IpSecConfig;->setDestinationAddress(Ljava/lang/String;)V

    .line 1505
    :cond_85
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1512
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    .line 1520
    invoke-direct {p0, v0}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v3

    .line 1521
    invoke-direct {p0, v1}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v4

    .line 1522
    if-ne v3, v4, :cond_f3

    .line 1532
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v0

    if-eqz v0, :cond_c6

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne v3, v0, :cond_be

    goto :goto_c6

    .line 1533
    :cond_be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UDP Encapsulation is not supported for this address family"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1537
    :cond_c6
    :goto_c6
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    if-eqz v0, :cond_ea

    if-ne v0, v2, :cond_cf

    .line 1541
    goto :goto_eb

    .line 1543
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IpSecTransform.mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_ea
    nop

    .line 1547
    :goto_eb
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/IpSecConfig;->setMarkValue(I)V

    .line 1548
    invoke-virtual {p1, v0}, Landroid/net/IpSecConfig;->setMarkMask(I)V

    .line 1549
    return-void

    .line 1523
    :cond_f3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source address ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") and destination address ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") have different address families."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1506
    :cond_117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mismatched remote addresseses."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1496
    :cond_11f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SPI already in use; cannot be used in new Transforms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 997
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    .line 998
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 999
    return-object v0
.end method

.method private createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v18

    .line 1577
    const/4 v0, 0x0

    if-eqz v18, :cond_14

    .line 1578
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/IpSecService$EncapSocketRecord;->getPort()I

    move-result v1

    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v2

    move/from16 v19, v1

    move/from16 v20, v2

    goto :goto_18

    .line 1577
    :cond_14
    move/from16 v19, v0

    move/from16 v20, v19

    .line 1582
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 1583
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v2

    .line 1584
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v3

    .line 1587
    const-string v4, ""

    if-nez v2, :cond_30

    .line 1588
    if-nez v3, :cond_2d

    const-string v5, "ecb(cipher_null)"

    goto :goto_2e

    :cond_2d
    move-object v5, v4

    :goto_2e
    move-object v12, v5

    goto :goto_35

    .line 1590
    :cond_30
    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    .line 1593
    :goto_35
    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1594
    invoke-interface {v5}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v5

    .line 1596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1597
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v7

    .line 1598
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v8

    .line 1599
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v9

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v10

    if-eqz v10, :cond_5a

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v10

    iget v10, v10, Landroid/net/Network;->netId:I

    goto :goto_5b

    :cond_5a
    move v10, v0

    .line 1601
    :goto_5b
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v11

    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v13

    .line 1603
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v14

    .line 1604
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v15

    goto :goto_6f

    :cond_6e
    move-object v15, v4

    .line 1605
    :goto_6f
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v16

    move-object/from16 p2, v4

    goto :goto_7e

    :cond_78
    move-object/from16 p2, v4

    new-array v4, v0, [B

    move-object/from16 v16, v4

    .line 1606
    :goto_7e
    if-eqz v1, :cond_87

    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    move/from16 v17, v1

    goto :goto_89

    :cond_87
    move/from16 v17, v0

    .line 1608
    :goto_89
    if-eqz v2, :cond_90

    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    goto :goto_92

    :cond_90
    new-array v1, v0, [B

    :goto_92
    move-object/from16 v22, v1

    .line 1609
    if-eqz v2, :cond_9d

    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    move/from16 v23, v1

    goto :goto_9f

    :cond_9d
    move/from16 v23, v0

    .line 1610
    :goto_9f
    if-eqz v3, :cond_a8

    invoke-virtual {v3}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_aa

    :cond_a8
    move-object/from16 v24, p2

    .line 1611
    :goto_aa
    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    goto :goto_b3

    :cond_b1
    new-array v1, v0, [B

    :goto_b3
    move-object/from16 v25, v1

    .line 1612
    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v0

    :cond_bb
    move/from16 v26, v0

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v21

    .line 1595
    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    move v6, v11

    move v7, v13

    move v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move/from16 v17, v26

    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 1617
    return-void
.end method

.method private enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V
    .registers 5

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

    move-result p1

    if-eqz p1, :cond_39

    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 1562
    iget-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v1, "IpSecService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    nop

    .line 1570
    return-void

    .line 1568
    :cond_31
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Request to ignore AppOps for non-legacy API"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1566
    :cond_39
    return-void

    .line 1555
    :cond_3a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IPsec Tunnel Mode requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1005
    if-eqz v0, :cond_d

    .line 1006
    return-object v0

    .line 1005
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Server couldn\'t get AppOps"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFamily(Ljava/lang/String;)I
    .registers 4

    .line 1454
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    .line 1455
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 1456
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_d

    .line 1457
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_13

    .line 1458
    :cond_d
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_13

    .line 1459
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 1461
    :cond_13
    :goto_13
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/io/FileDescriptor;I)V
    .registers 2
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
    move-exception p0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    throw p0
.end method

.method private releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V

    .line 1144
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1366
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1367
    iget-object p3, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object p3

    .line 1371
    iget-object p3, p3, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1372
    invoke-virtual {p3, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object p1

    check-cast p1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1377
    :try_start_16
    iget-object p3, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1378
    invoke-interface {p3}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object p3

    .line 1380
    invoke-static {p1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object p1

    .line 1381
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1382
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p2

    .line 1379
    invoke-interface {p3, p1, v0, p2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1385
    nop

    .line 1386
    monitor-exit p0

    return-void

    .line 1383
    :catch_32
    move-exception p1

    .line 1384
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1365
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1099
    :try_start_1
    invoke-static {p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1101
    if-lez p2, :cond_13

    const/16 v0, 0x100

    if-lt p2, v0, :cond_b

    goto :goto_13

    .line 1102
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ESP SPI must not be in the range of 0-255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1104
    :cond_13
    :goto_13
    const-string v0, "Null Binder passed to allocateSecurityParameterIndex"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1107
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    .line 1108
    iget v8, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_96

    .line 1110
    nop

    .line 1112
    const/4 v9, -0x1

    const/4 v10, 0x0

    :try_start_2b
    iget-object v2, v1, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v2}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1113
    new-instance p1, Landroid/net/IpSecSpiResponse;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v9, v10}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_2b .. :try_end_39} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_7f
    .catchall {:try_start_2b .. :try_end_39} :catchall_96

    monitor-exit p0

    return-object p1

    .line 1117
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1119
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    const-string v3, ""

    .line 1120
    invoke-interface {v2, v0, v3, p1, p2}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2
    :try_end_47
    .catch Landroid/os/ServiceSpecificException; {:try_start_3b .. :try_end_47} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_47} :catch_7f
    .catchall {:try_start_3b .. :try_end_47} :catchall_96

    .line 1121
    :try_start_47
    const-string v0, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocated SPI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, v1, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v1, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v11, Lcom/android/server/IpSecService$SpiRecord;

    const-string v5, ""

    move-object v2, v11

    move-object v3, p0

    move v4, v8

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V

    new-array p1, v10, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v1, p0, v11, p3, p1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_75
    .catch Landroid/os/ServiceSpecificException; {:try_start_47 .. :try_end_75} :catch_7d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_75} :catch_7f
    .catchall {:try_start_47 .. :try_end_75} :catchall_96

    .line 1134
    nop

    .line 1135
    :try_start_76
    new-instance p1, Landroid/net/IpSecSpiResponse;

    invoke-direct {p1, v10, v8, p2}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_96

    monitor-exit p0

    return-object p1

    .line 1126
    :catch_7d
    move-exception p1

    goto :goto_87

    .line 1132
    :catch_7f
    move-exception p1

    .line 1133
    :try_start_80
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1126
    :catch_85
    move-exception p1

    move p2, v10

    .line 1127
    :goto_87
    iget p3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v0, Landroid/system/OsConstants;->ENOENT:I

    if-ne p3, v0, :cond_95

    .line 1128
    new-instance p1, Landroid/net/IpSecSpiResponse;

    const/4 p3, 0x2

    invoke-direct {p1, p3, v9, p2}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_93
    .catchall {:try_start_80 .. :try_end_93} :catchall_96

    monitor-exit p0

    return-object p1

    .line 1131
    :cond_95
    :try_start_95
    throw p1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    .line 1098
    :catchall_96
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1688
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1689
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1690
    invoke-static {p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1692
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object p3

    check-cast p3, Lcom/android/server/IpSecService$TransformRecord;

    .line 1695
    iget v0, p3, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_53

    iget v0, p3, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    if-ne v0, v2, :cond_53

    .line 1700
    invoke-virtual {p3}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v0

    .line 1701
    nop

    .line 1702
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    const-string v3, "Transform mode was not Transport mode; cannot be applied to a socket"

    .line 1701
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1705
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1706
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 1711
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v4

    .line 1712
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    .line 1713
    invoke-virtual {p3}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v6

    .line 1707
    move-object v0, v1

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_5b

    .line 1714
    monitor-exit p0

    return-void

    .line 1696
    :cond_53
    :try_start_53
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5b

    .line 1687
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTunnelModeTransform(IIILjava/lang/String;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v12, p3

    monitor-enter p0

    .line 1738
    move-object/from16 v2, p4

    :try_start_9
    invoke-direct {v1, v2}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1739
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1742
    iget-object v2, v1, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v2, v13}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v2

    .line 1745
    iget-object v3, v2, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1746
    invoke-virtual {v3, v12}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/server/IpSecService$TransformRecord;

    .line 1750
    iget-object v3, v2, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1751
    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    check-cast v3, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    .line 1754
    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v15

    .line 1755
    nop

    .line 1756
    invoke-virtual {v15}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3b

    move v4, v6

    goto :goto_3c

    :cond_3b
    move v4, v5

    :goto_3c
    const-string v7, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface"

    .line 1755
    invoke-static {v4, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1759
    const/4 v4, 0x0

    .line 1760
    invoke-virtual {v15}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v7

    if-eqz v7, :cond_56

    .line 1761
    iget-object v4, v2, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1762
    invoke-virtual {v15}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v4

    check-cast v4, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v11, v4

    goto :goto_57

    .line 1760
    :cond_56
    move-object v11, v4

    .line 1764
    :goto_57
    iget-object v2, v2, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v15}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/IpSecService$SpiRecord;

    .line 1767
    if-ne v0, v6, :cond_6d

    .line 1768
    invoke-virtual {v3}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getOkey()I

    move-result v2

    move/from16 v16, v2

    goto :goto_73

    .line 1769
    :cond_6d
    invoke-virtual {v3}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIkey()I

    move-result v2
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_f7

    move/from16 v16, v2

    :goto_73
    nop

    .line 1774
    nop

    .line 1775
    :try_start_75
    invoke-virtual {v3}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIfId()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/net/IpSecConfig;->setXfrmInterfaceId(I)V

    .line 1791
    if-ne v0, v6, :cond_90

    .line 1793
    invoke-virtual {v3}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/net/IpSecConfig;->setNetwork(Landroid/net/Network;)V

    .line 1797
    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v2

    move/from16 v17, v2

    goto :goto_92

    .line 1791
    :cond_90
    move/from16 v17, v5

    .line 1801
    :goto_92
    sget-object v9, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v8, v9

    move v7, v5

    :goto_96
    if-ge v7, v8, :cond_dd

    aget v4, v9, v7

    .line 1802
    iget-object v2, v1, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1803
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1808
    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v6

    .line 1809
    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    .line 1813
    invoke-virtual {v15}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v20

    .line 1804
    move v3, v13

    move/from16 v5, p2

    move/from16 v21, v7

    move-object/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v22, v9

    move/from16 v9, v16

    move-object v0, v10

    move/from16 v10, v19

    move/from16 p4, v13

    move-object v13, v11

    move/from16 v11, v20

    invoke-interface/range {v2 .. v11}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1801
    add-int/lit8 v7, v21, 0x1

    move-object v10, v0

    move-object v11, v13

    move/from16 v8, v18

    move-object/from16 v9, v22

    move/from16 v0, p2

    move/from16 v13, p4

    goto :goto_96

    .line 1817
    :cond_dd
    move-object v0, v10

    move-object v13, v11

    invoke-direct {v1, v15, v12, v0, v13}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    :try_end_e2
    .catch Landroid/os/ServiceSpecificException; {:try_start_75 .. :try_end_e2} :catch_e5
    .catchall {:try_start_75 .. :try_end_e2} :catchall_f7

    .line 1824
    nop

    .line 1825
    monitor-exit p0

    return-void

    .line 1818
    :catch_e5
    move-exception v0

    .line 1819
    :try_start_e6
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EINVAL:I

    if-ne v2, v3, :cond_f6

    .line 1820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1822
    :cond_f6
    throw v0
    :try_end_f7
    .catchall {:try_start_e6 .. :try_end_f7} :catchall_f7

    .line 1737
    :catchall_f7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeUdpEncapsulationSocket(I)V
    .registers 4
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
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1269
    monitor-exit p0

    return-void

    .line 1266
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1628
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1630
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1632
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/IpSecService;->checkIpSecConfig(Landroid/net/IpSecConfig;)V

    .line 1633
    const-string p3, "Null Binder passed to createTransform"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget p3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    .line 1636
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1637
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    iget-object v2, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v2}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1640
    new-instance p1, Landroid/net/IpSecTransformResponse;

    invoke-direct {p1, v1}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_95

    monitor-exit p0

    return-object p1

    .line 1643
    :cond_3a
    const/4 v1, 0x0

    .line 1644
    :try_start_3b
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v2

    if-eqz v2, :cond_56

    .line 1645
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1647
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v2

    .line 1646
    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    .line 1648
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    invoke-virtual {v1}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v7, v1

    goto :goto_57

    .line 1644
    :cond_56
    move-object v7, v1

    .line 1652
    :goto_57
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1653
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    .line 1654
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    invoke-virtual {v1}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/IpSecService$SpiRecord;

    .line 1657
    invoke-direct {p0, p1, p3, v6, v7}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1660
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v1, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v9, Lcom/android/server/IpSecService$TransformRecord;

    move-object v2, v9

    move-object v3, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1665
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-interface {v8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v1, p0, v9, p2, p1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    .line 1660
    invoke-virtual {v0, p3, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1666
    new-instance p1, Landroid/net/IpSecTransformResponse;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_93
    .catchall {:try_start_3b .. :try_end_93} :catchall_95

    monitor-exit p0

    return-object p1

    .line 1627
    :catchall_95
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;
    .registers 33

    move-object/from16 v11, p0

    move-object/from16 v0, p4

    monitor-enter p0

    .line 1280
    move-object/from16 v1, p5

    :try_start_7
    invoke-direct {v11, v1}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1281
    const-string v1, "Null Binder passed to createTunnelInterface"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v1, "No underlying network was specified"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1284
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1290
    iget-object v2, v11, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v2

    .line 1291
    iget-object v3, v2, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v3}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    .line 1292
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;

    invoke-direct {v0, v4}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(I)V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_103

    monitor-exit p0

    return-object v0

    .line 1295
    :cond_36
    :try_start_36
    iget v10, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v10, 0x1

    iput v3, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v9

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v8

    .line 1298
    const-string v3, "%s%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ipsec"

    const/4 v15, 0x0

    aput-object v7, v6, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_103

    .line 1305
    :try_start_58
    iget-object v3, v11, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v3}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v3

    .line 1306
    move-object v12, v3

    move-object v13, v7

    move-object/from16 v14, p1

    move v6, v15

    move-object/from16 v15, p2

    move/from16 v16, v9

    move/from16 v17, v8

    move/from16 v18, v10

    invoke-interface/range {v12 .. v18}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1308
    sget-object v4, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v15, v4

    move v14, v6

    :goto_72
    if-ge v14, v15, :cond_aa

    aget v22, v4, v14

    .line 1310
    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v20, -0x1

    move-object v12, v3

    move v13, v1

    move/from16 v23, v14

    move/from16 v14, v22

    move/from16 v24, v15

    move/from16 v15, v16

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v19, v8

    move/from16 v21, v10

    invoke-interface/range {v12 .. v21}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1320
    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    move-object v12, v3

    move v13, v1

    move/from16 v14, v22

    move-object/from16 v16, p2

    move-object/from16 v17, p1

    move/from16 v19, v9

    move/from16 v21, v10

    invoke-interface/range {v12 .. v21}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1308
    add-int/lit8 v14, v23, 0x1

    move/from16 v15, v24

    goto :goto_72

    .line 1332
    :cond_aa
    iget-object v12, v2, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v13, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v14, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_b0} :catch_f5
    .catchall {:try_start_58 .. :try_end_b0} :catchall_e5

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v10

    move-object v4, v7

    move-object/from16 v5, p3

    move v15, v6

    move-object/from16 v6, p1

    move-object/from16 v25, v7

    move-object/from16 v7, p2

    move/from16 p1, v8

    move v8, v9

    move/from16 v26, v9

    move/from16 v9, p1

    move/from16 p2, v10

    :try_start_c7
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;III)V

    new-array v1, v15, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v13, v11, v14, v0, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1345
    new-instance v1, Landroid/net/IpSecTunnelInterfaceResponse;

    move-object/from16 v2, v25

    invoke-direct {v1, v15, v0, v2}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(IILjava/lang/String;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_db} :catch_df
    .catchall {:try_start_c7 .. :try_end_db} :catchall_dd

    monitor-exit p0

    return-object v1

    .line 1351
    :catchall_dd
    move-exception v0

    goto :goto_ea

    .line 1346
    :catch_df
    move-exception v0

    move/from16 v2, p1

    move/from16 v1, v26

    goto :goto_f8

    .line 1351
    :catchall_e5
    move-exception v0

    move/from16 p1, v8

    move/from16 v26, v9

    .line 1353
    :goto_ea
    move/from16 v1, v26

    :try_start_ec
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1354
    move/from16 v2, p1

    invoke-virtual {v11, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1355
    throw v0

    .line 1346
    :catch_f5
    move-exception v0

    move v2, v8

    move v1, v9

    .line 1348
    :goto_f8
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1349
    invoke-virtual {v11, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_103
    .catchall {:try_start_ec .. :try_end_103} :catchall_103

    .line 1279
    :catchall_103
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTransform(I)V
    .registers 4
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
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1679
    monitor-exit p0

    return-void

    .line 1676
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteTunnelInterface(ILjava/lang/String;)V
    .registers 4
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
    iget-object p2, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object p2

    .line 1426
    iget-object p2, p2, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, p2, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1427
    monitor-exit p0

    return-void

    .line 1423
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1829
    :try_start_1
    iget-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    const-string v0, "IpSecService"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string p1, "IpSecService dump:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NetdNativeService Connection: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result p3

    if-eqz p3, :cond_22

    const-string p3, "alive"

    goto :goto_24

    :cond_22
    const-string p3, "dead"

    :goto_24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1835
    const-string p1, "mUserResourceTracker:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    iget-object p1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 1837
    monitor-exit p0

    return-void

    .line 1828
    :catchall_3d
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

    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_15
    .catchall {:try_start_2 .. :try_end_8} :catchall_12

    .line 1057
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
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_15
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 1055
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1061
    :catch_15
    move-exception v1

    .line 1062
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .registers 11
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
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1221
    :cond_15
    :goto_15
    const-string v0, "Null Binder passed to openUdpEncapsulationSocket"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    .line 1225
    iget v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_a7

    .line 1226
    const/4 v3, 0x0

    .line 1228
    const/4 v4, 0x1

    :try_start_2c
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v5}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1229
    new-instance p1, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {p1, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_9c
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_39} :catch_9c
    .catchall {:try_start_2c .. :try_end_39} :catchall_a7

    monitor-exit p0

    return-object p1

    .line 1232
    :cond_3b
    :try_start_3b
    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

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
    if-eqz p1, :cond_7f

    .line 1245
    const-string v0, "IpSecService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v3, v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    goto :goto_83

    .line 1248
    :cond_7f
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)I

    move-result p1

    .line 1251
    :goto_83
    iget-object v0, v1, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v1, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v5, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-direct {v5, p0, v2, v3, p1}, Lcom/android/server/IpSecService$EncapSocketRecord;-><init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v1, p0, v5, p2, v7}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1255
    new-instance p2, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {p2, v6, v2, p1, v3}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_9a} :catch_9c
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_9a} :catch_9c
    .catchall {:try_start_3b .. :try_end_9a} :catchall_a7

    monitor-exit p0

    return-object p2

    .line 1256
    :catch_9c
    move-exception p1

    .line 1257
    :try_start_9d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1261
    new-instance p1, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {p1, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_a7

    monitor-exit p0

    return-object p1

    .line 1216
    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseNetId(I)V
    .registers 4
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
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized releaseSecurityParameterIndex(I)V
    .registers 4
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
    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1151
    monitor-exit p0

    return-void

    .line 1148
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1395
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1397
    iget-object p3, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object p3

    .line 1400
    iget-object p3, p3, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1401
    invoke-virtual {p3, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object p1

    check-cast p1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1406
    :try_start_16
    iget-object p3, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1407
    invoke-interface {p3}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object p3

    .line 1409
    invoke-static {p1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1411
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p2

    .line 1408
    invoke-interface {p3, p1, v0, p2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2f} :catch_32
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    .line 1414
    nop

    .line 1415
    monitor-exit p0

    return-void

    .line 1412
    :catch_32
    move-exception p1

    .line 1413
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_38

    .line 1394
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
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

    move v2, v1

    :goto_5
    const/16 v3, 0x400

    if-ge v2, v3, :cond_2b

    .line 774
    :try_start_9
    iget v4, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 775
    const v5, 0xfc00

    add-int/2addr v4, v5

    .line 776
    iget v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    if-lt v5, v3, :cond_19

    iput v1, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 777
    :cond_19
    iget-object v3, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 778
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 779
    monitor-exit v0

    return v4

    .line 773
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 782
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_34

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
    .registers 8
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
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 1433
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object p1

    .line 1436
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_17

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v4, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v4, v3

    :goto_18
    const-string v5, "No Encryption or Authentication algorithms specified"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1439
    if-eqz v0, :cond_28

    .line 1440
    invoke-virtual {v0}, Landroid/net/IpSecAlgorithm;->isAuthentication()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    move v4, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v4, v3

    .line 1439
    :goto_29
    const-string v5, "Unsupported algorithm for Authentication"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1442
    if-eqz v1, :cond_39

    .line 1443
    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->isEncryption()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_39

    :cond_37
    move v4, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v4, v3

    .line 1442
    :goto_3a
    const-string v5, "Unsupported algorithm for Encryption"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1444
    if-eqz p1, :cond_4a

    .line 1445
    invoke-virtual {p1}, Landroid/net/IpSecAlgorithm;->isAead()Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_4a

    :cond_48
    move v4, v2

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v4, v3

    .line 1444
    :goto_4b
    const-string v5, "Unsupported algorithm for Authenticated Encryption"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1447
    if-eqz p1, :cond_56

    if-nez v0, :cond_57

    if-nez v1, :cond_57

    :cond_56
    move v2, v3

    :cond_57
    const-string p1, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms"

    invoke-static {v2, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1451
    return-void
.end method
