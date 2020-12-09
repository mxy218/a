.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;,
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mInterface:Landroid/net/util/InterfaceParams;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0x85

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    .line 75
    const/16 v0, 0x86

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    return-void

    :array_22
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/net/util/InterfaceParams;)V
    .registers 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    .line 109
    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    .line 238
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    .line 239
    new-instance p1, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v0, v0, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 240
    new-instance p1, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 241
    return-void
.end method

.method static synthetic access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .registers 1

    .line 72
    iget-object p0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .registers 1

    .line 72
    iget p0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    return p0
.end method

.method static synthetic access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .registers 1

    .line 72
    iget-object p0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static synthetic access$500()B
    .registers 1

    .line 72
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 72
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .registers 1

    .line 72
    iget-object p0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .registers 1

    .line 72
    iget-object p0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private static asByte(I)B
    .registers 1

    .line 365
    int-to-byte p0, p0

    return p0
.end method

.method private static asShort(I)S
    .registers 1

    .line 366
    int-to-short p0, p0

    return p0
.end method

.method private assembleRaLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 291
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    .line 292
    :goto_14
    nop

    .line 295
    if-eqz v1, :cond_23

    :try_start_17
    iget-object v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-boolean v4, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v4, :cond_23

    move v4, v2

    goto :goto_24

    .line 336
    :catch_1f
    move-exception v0

    move v2, v3

    goto/16 :goto_c9

    .line 295
    :cond_23
    move v4, v3

    .line 296
    :goto_24
    if-eqz v1, :cond_2b

    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-byte v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    goto :goto_2d

    :cond_2b
    const/16 v5, 0x41

    .line 295
    :goto_2d
    invoke-static {v0, v4, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;ZB)V

    .line 297
    iget-object v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v4, v4, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v4}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 307
    if-eqz v1, :cond_8c

    .line 308
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 311
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_58
    .catch Ljava/nio/BufferOverflowException; {:try_start_17 .. :try_end_58} :catch_1f

    move v4, v3

    :goto_59
    :try_start_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0xe10

    if-eqz v5, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 312
    invoke-static {v0, v5, v6, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 313
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 314
    nop

    .line 315
    move v4, v2

    goto :goto_59

    .line 317
    :cond_73
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_8d

    .line 318
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-static {v0, v1, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 320
    move v4, v2

    goto :goto_8d

    .line 307
    :cond_8c
    move v4, v3

    .line 324
    :cond_8d
    :goto_8d
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 325
    invoke-static {v0, v5, v3, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 327
    nop

    .line 328
    move v4, v2

    goto :goto_97

    .line 330
    :cond_af
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c5

    .line 332
    invoke-static {v0, v1, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_c4
    .catch Ljava/nio/BufferOverflowException; {:try_start_59 .. :try_end_c4} :catch_c7

    .line 334
    goto :goto_c6

    .line 331
    :cond_c5
    move v2, v4

    .line 341
    :goto_c6
    goto :goto_df

    .line 336
    :catch_c7
    move-exception v0

    move v2, v4

    .line 340
    :goto_c9
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not construct new RA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_df
    if-nez v2, :cond_e3

    .line 345
    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 347
    :cond_e3
    return-void
.end method

.method private closeSocket()V
    .registers 2

    .line 611
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_b

    .line 613
    :try_start_4
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_b

    .line 614
    :catch_a
    move-exception v0

    .line 616
    :cond_b
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 617
    return-void
.end method

.method private createSocket()Z
    .registers 7

    .line 590
    const/16 v0, -0x1fe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 593
    :try_start_6
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 595
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v4, 0x12c

    .line 596
    invoke-static {v4, v5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 595
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 597
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v4, v4, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 598
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 599
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_3c} :catch_44
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3c} :catch_44
    .catchall {:try_start_6 .. :try_end_3c} :catchall_42

    .line 604
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 605
    nop

    .line 607
    const/4 v0, 0x1

    return v0

    .line 604
    :catchall_42
    move-exception v1

    goto :goto_60

    .line 600
    :catch_44
    move-exception v1

    .line 601
    :try_start_45
    sget-object v2, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create RA daemon socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_42

    .line 602
    const/4 v1, 0x0

    .line 604
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 602
    return v1

    .line 604
    :goto_60
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v1
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .registers 4

    .line 358
    :try_start_0
    const-string v0, "ff02::1"

    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    invoke-static {v0, v1, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 359
    :catch_9
    move-exception p0

    .line 360
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to construct ff02::1 InetAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSocketValid()Z
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 621
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .registers 4

    .line 625
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 626
    return v1

    .line 629
    :cond_a
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 630
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_25

    .line 631
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_25

    check-cast p1, Ljava/net/Inet6Address;

    .line 632
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p1

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v0, v0, Landroid/net/util/InterfaceParams;->index:I

    if-ne p1, v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 630
    :goto_26
    return v1
.end method

.method private maybeNotifyMulticastTransmitter()V
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 351
    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    .line 354
    :cond_7
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .registers 9

    .line 636
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 637
    :cond_8
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 641
    :cond_a
    :try_start_a
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_44
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_d} :catch_44

    .line 642
    :try_start_d
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_15

    .line 644
    monitor-exit v6

    return-void

    .line 646
    :cond_15
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    const/4 v2, 0x0

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 647
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_41

    .line 648
    :try_start_22
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RA sendto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_40} :catch_44
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_40} :catch_44

    .line 653
    goto :goto_62

    .line 647
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_43 .. :try_end_44} :catch_44
    .catch Ljava/net/SocketException; {:try_start_43 .. :try_end_44} :catch_44

    .line 649
    :catch_44
    move-exception p1

    .line 650
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 651
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendto error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_62
    :goto_62
    return-void
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 434
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 436
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 437
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 438
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;ZB)V
    .registers 5

    .line 386
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 387
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 388
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 389
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 391
    if-eqz p1, :cond_24

    const/16 p2, 0x8

    invoke-static {p2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result p2

    goto :goto_28

    :cond_24
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result p2

    :goto_28
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 392
    if-eqz p1, :cond_35

    const/16 p1, 0xe10

    invoke-static {p1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result p1

    goto :goto_39

    :cond_35
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result p1

    :goto_39
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 393
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 394
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 395
    return-void
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 454
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 456
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 457
    const/16 v0, 0x500

    if-ge p1, v0, :cond_18

    move p1, v0

    :cond_18
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 458
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .registers 7

    .line 485
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 486
    const/16 v1, 0x40

    if-eq v0, v1, :cond_9

    .line 487
    return-void

    .line 492
    :cond_9
    const/4 v1, 0x0

    if-gez p2, :cond_d

    move p2, v1

    .line 493
    :cond_d
    if-gez p3, :cond_10

    move p3, v1

    .line 494
    :cond_10
    if-le p3, p2, :cond_13

    move p3, p2

    .line 496
    :cond_13
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 497
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v2, 0x4

    .line 498
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 499
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v0, 0xc0

    .line 500
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 501
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 502
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 503
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 504
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 505
    return-void
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 562
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 563
    new-instance v3, Landroid/net/LinkAddress;

    const/16 v4, 0x40

    invoke-direct {v3, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 564
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_25
    goto :goto_9

    .line 567
    :cond_26
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    return-void

    .line 570
    :cond_2d
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result p1

    .line 571
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 572
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x0

    .line 573
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 574
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/Inet6Address;

    .line 583
    invoke-virtual {p2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 584
    goto :goto_53

    .line 585
    :cond_67
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .registers 8

    .line 523
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 524
    const/16 v1, 0x40

    if-le v0, v1, :cond_9

    .line 525
    return-void

    .line 529
    :cond_9
    const/16 v2, 0x8

    if-nez v0, :cond_f

    const/4 v3, 0x1

    goto :goto_14

    :cond_f
    if-gt v0, v2, :cond_13

    const/4 v3, 0x2

    goto :goto_14

    :cond_13
    const/4 v3, 0x3

    .line 528
    :goto_14
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v3

    .line 531
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 532
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 533
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 534
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 535
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0xe10

    .line 536
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 539
    if-lez v0, :cond_4a

    .line 540
    const/4 v3, 0x0

    if-gt v0, v1, :cond_45

    goto :goto_47

    :cond_45
    const/16 v2, 0x10

    :goto_47
    invoke-virtual {p0, p1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 542
    :cond_4a
    return-void
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .registers 4

    .line 407
    if-eqz p1, :cond_14

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    goto :goto_14

    .line 413
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 414
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 415
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    return-void

    .line 409
    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .line 244
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    if-eqz p1, :cond_16

    .line 246
    :try_start_5
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    .line 247
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object p1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    goto :goto_16

    .line 258
    :catchall_14
    move-exception p1

    goto :goto_30

    .line 250
    :cond_16
    :goto_16
    if-eqz p2, :cond_26

    .line 252
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v1, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    .line 253
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v1, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    .line 256
    :cond_26
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 257
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    .line 258
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_14

    .line 260
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 261
    return-void

    .line 258
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_14

    throw p1
.end method

.method public start()Z
    .registers 3

    .line 264
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_8
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 269
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->start()V

    .line 271
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 272
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->start()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .registers 2

    .line 278
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    .line 281
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 283
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 284
    return-void
.end method
