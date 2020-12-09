.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# static fields
.field private static final IFNAME_LINKLAYERS:[I

.field private static final IFNAME_PREFIXES:[Ljava/lang/String;

.field private static final KNOWN_PREFIX:I = 0x7

.field private static final TRANSPORT_LINKLAYER_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 377
    const/16 v0, 0x8

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    .line 379
    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 380
    const/4 v4, 0x4

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 381
    aput v5, v1, v3

    .line 382
    const/4 v6, 0x3

    aput v6, v1, v6

    .line 383
    aput v2, v1, v4

    .line 384
    const/4 v7, 0x5

    aput v0, v1, v7

    .line 385
    const/16 v8, 0x9

    const/4 v9, 0x6

    aput v8, v1, v9

    .line 401
    const/4 v1, 0x7

    new-array v10, v1, [Ljava/lang/String;

    sput-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    .line 402
    new-array v10, v1, [I

    sput-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    .line 405
    sget-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v11, "rmnet"

    aput-object v11, v10, v2

    .line 406
    sget-object v11, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v3, v11, v2

    .line 408
    const-string/jumbo v2, "wlan"

    aput-object v2, v10, v5

    .line 409
    aput v4, v11, v5

    .line 411
    const-string v2, "bt-pan"

    aput-object v2, v10, v3

    .line 412
    aput v5, v11, v3

    .line 414
    const-string/jumbo v2, "p2p"

    aput-object v2, v10, v6

    .line 415
    aput v1, v11, v6

    .line 417
    const-string v1, "aware"

    aput-object v1, v10, v4

    .line 418
    aput v0, v11, v4

    .line 420
    const-string v0, "eth"

    aput-object v0, v10, v7

    .line 421
    aput v6, v11, v7

    .line 423
    const-string/jumbo v0, "wpan"

    aput-object v0, v10, v9

    .line 424
    aput v8, v11, v9

    .line 425
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5

    .line 159
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 160
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 161
    iput-wide p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 162
    if-eqz p3, :cond_d

    .line 163
    iput-object p3, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 165
    :cond_d
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V

    .line 166
    return-object v0
.end method

.method private static bytesToInts([B)[I
    .registers 4

    .line 308
    array-length v0, p0

    new-array v0, v0, [I

    .line 309
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 310
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 312
    :cond_10
    return-object v0
.end method

.method private static ifnameToLinkLayer(Ljava/lang/String;)I
    .registers 4

    .line 391
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_17

    .line 392
    sget-object v2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 393
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 394
    sget-object p0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aget p0, p0, v1

    return p0

    .line 391
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 397
    :cond_17
    return v0
.end method

.method private static inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .registers 5

    .line 345
    nop

    .line 346
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 347
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v0

    goto :goto_1c

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 349
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ifnameToLinkLayer(Ljava/lang/String;)I

    move-result v0

    goto :goto_1c

    .line 348
    :cond_1b
    const/4 v0, 0x0

    .line 351
    :goto_1c
    if-nez v0, :cond_1f

    .line 352
    return-void

    .line 354
    :cond_1f
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 356
    return-void
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .registers 2

    .line 328
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_a

    .line 329
    const/4 p0, 0x3

    return p0

    .line 331
    :cond_a
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_10

    .line 332
    const/4 p0, 0x2

    return p0

    .line 334
    :cond_10
    iget-boolean p0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz p0, :cond_16

    .line 335
    const/4 p0, 0x1

    return p0

    .line 337
    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static isBitSet(II)Z
    .registers 3

    .line 341
    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 64
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 65
    iget-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length p1, p1

    if-gtz p1, :cond_1c

    if-lez p0, :cond_1f

    .line 67
    :cond_1c
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 69
    :cond_1f
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .registers 5

    .line 264
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    .line 266
    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 267
    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 268
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 269
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 270
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 271
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 272
    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 274
    :cond_25
    iget p1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {p1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 275
    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 277
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 278
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .registers 5

    .line 281
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    .line 283
    iget-wide v1, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 284
    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 285
    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 286
    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 287
    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 288
    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 289
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 290
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 291
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 292
    iget p1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 294
    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .registers 4

    .line 225
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 226
    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 227
    iget p1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 229
    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .registers 3

    .line 219
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 220
    iget p1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 222
    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .registers 4

    .line 170
    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 171
    check-cast p1, Landroid/net/metrics/DhcpErrorEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    .line 172
    return v1

    .line 175
    :cond_b
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_15

    .line 176
    check-cast p1, Landroid/net/metrics/DhcpClientEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    .line 177
    return v1

    .line 180
    :cond_15
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_1f

    .line 181
    check-cast p1, Landroid/net/metrics/IpManagerEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    .line 182
    return v1

    .line 185
    :cond_1f
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_29

    .line 186
    check-cast p1, Landroid/net/metrics/IpReachabilityEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    .line 187
    return v1

    .line 190
    :cond_29
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_33

    .line 191
    check-cast p1, Landroid/net/metrics/NetworkEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    .line 192
    return v1

    .line 195
    :cond_33
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_3d

    .line 196
    check-cast p1, Landroid/net/metrics/ValidationProbeEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    .line 197
    return v1

    .line 200
    :cond_3d
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_47

    .line 201
    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    .line 202
    return v1

    .line 205
    :cond_47
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_51

    .line 206
    check-cast p1, Landroid/net/metrics/ApfStats;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    .line 207
    return v1

    .line 210
    :cond_51
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_5b

    .line 211
    check-cast p1, Landroid/net/metrics/RaEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    .line 212
    return v1

    .line 215
    :cond_5b
    const/4 p0, 0x0

    return p0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .registers 5

    .line 232
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    .line 234
    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 235
    iget-wide v1, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int p1, v1

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 237
    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .registers 3

    .line 240
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    .line 242
    iget p1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 244
    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .registers 5

    .line 247
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    .line 249
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 250
    iget-wide v1, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int p1, v1

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 252
    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .registers 5

    .line 297
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    .line 298
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 299
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 300
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 301
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 302
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 303
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 305
    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .registers 5

    .line 255
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    .line 257
    iget-wide v1, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    .line 258
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    .line 259
    iget p1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 261
    return-void
.end method

.method private static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .registers 6

    .line 316
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 317
    new-array v1, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 318
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1f

    .line 319
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    .line 320
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    .line 321
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    .line 322
    aput-object v3, v1, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 324
    :cond_1f
    return-object v1
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5

    .line 85
    iget v0, p0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v3, p0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    .line 86
    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 87
    iget-object p0, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_18
    return-object v0
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5

    .line 94
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    .line 96
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 97
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 98
    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 99
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 100
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 101
    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 103
    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 6

    .line 141
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    .line 143
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 144
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 145
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 146
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 147
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    .line 148
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 149
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 150
    iget p0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-nez p0, :cond_37

    .line 152
    const/4 p0, 0x5

    iput p0, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 154
    :cond_37
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 155
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5

    .line 108
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    .line 110
    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v1}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 111
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 112
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 113
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 114
    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 116
    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 5

    .line 120
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 123
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 124
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 125
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 126
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 127
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 128
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 129
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 130
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 131
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 132
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    .line 133
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 134
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 135
    iget-object p0, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 137
    return-object p0
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 75
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 76
    if-nez v1, :cond_20

    .line 77
    goto :goto_d

    .line 79
    :cond_20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_d

    .line 81
    :cond_24
    return-object v0
.end method

.method private static transportToLinkLayer(I)I
    .registers 3

    .line 371
    if-ltz p0, :cond_a

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    array-length v1, v0

    if-ge p0, v1, :cond_a

    .line 372
    aget p0, v0, p0

    return p0

    .line 374
    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static transportsToLinkLayer(J)I
    .registers 4

    .line 359
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 366
    const/4 p0, 0x6

    return p0

    .line 363
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    .line 364
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportToLinkLayer(I)I

    move-result p0

    return p0

    .line 361
    :cond_14
    const/4 p0, 0x0

    return p0
.end method
