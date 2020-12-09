.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mExplicitSourceIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 89
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .registers 6

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    .line 170
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 171
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    .line 172
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    .line 173
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    .line 174
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    .line 175
    iget-wide p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    iget-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    .line 182
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object p2, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 183
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object p2, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 188
    :cond_48
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 189
    :cond_58
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object p2, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 192
    :cond_5f
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    .line 193
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 194
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p3

    .line 195
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 196
    invoke-virtual {p2}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 197
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V

    .line 200
    :cond_8b
    goto :goto_69

    .line 201
    :cond_8c
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/InetAddress;

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 203
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    .line 204
    goto :goto_96

    .line 206
    :cond_a9
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 208
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ifaces{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p2

    const-string p3, ","

    invoke-static {p3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "} index{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "} network{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "} nethandle{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 213
    invoke-virtual {p2}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$100()J
    .registers 2

    .line 85
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    return-wide v0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    .line 218
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 220
    :catch_d
    move-exception p0

    .line 221
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final now()J
    .registers 2

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 249
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 250
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 251
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1e
    return-void
.end method

.method private prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V
    .registers 8

    .line 234
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 235
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 236
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_47

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 237
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 239
    new-instance v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 240
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v5, p0, v2, p1, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 241
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_47
    goto :goto_a

    .line 245
    :cond_48
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 227
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 228
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 229
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1e
    return-void
.end method

.method private startMeasurements()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 261
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 262
    goto :goto_a

    .line 263
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 264
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 265
    goto :goto_26

    .line 266
    :cond_38
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 267
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 268
    goto :goto_42

    .line 269
    :cond_54
    return-void
.end method

.method private totalMeasurementCount()I
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkDiagnostics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 325
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3b

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: countdown wait incomplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " unfinished measurements"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_3b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 335
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->getMeasurements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 336
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->checkSucceeded()Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "."

    goto :goto_5d

    :cond_5b
    const-string v2, "F"

    .line 337
    :goto_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 338
    goto :goto_46

    .line 340
    :cond_79
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 341
    return-void
.end method

.method public getMeasurements()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_30

    .line 286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_30
    goto :goto_13

    .line 290
    :cond_31
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_5c

    .line 292
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_5c
    goto :goto_3b

    .line 295
    :cond_5d
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_84

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_84
    goto :goto_67

    .line 302
    :cond_85
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_ac

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_ac
    goto :goto_8f

    .line 308
    :cond_ad
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_d8

    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_d8
    goto :goto_b7

    .line 313
    :cond_d9
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_100

    .line 315
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_100
    goto :goto_e3

    .line 319
    :cond_101
    return-object v0
.end method

.method public waitForMeasurements()V
    .registers 6

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    .line 274
    :catch_f
    move-exception v0

    :goto_10
    nop

    .line 275
    return-void
.end method
