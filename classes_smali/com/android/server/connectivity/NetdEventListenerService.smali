.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x30

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0x493e0L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mLastSnapshot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 154
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 97
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 122
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/net/INetdEventCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 160
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 161
    return-void
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 5

    .line 314
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    .line 317
    if-nez v1, :cond_1b

    .line 318
    new-instance v1, Landroid/net/metrics/WakeupStats;

    invoke-direct {v1, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1b
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 322
    return-void
.end method

.method private collectPendingMetricsSnapshot(J)V
    .registers 7

    .line 186
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 187
    return-void

    .line 189
    :cond_10
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 190
    iget-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 191
    invoke-static {p1, p2, v0}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object p1

    .line 192
    iget-object p2, p1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 193
    return-void

    .line 195
    :cond_27
    iget-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 6

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 169
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/metrics/NetworkMetrics;

    .line 170
    if-nez p1, :cond_1d

    .line 172
    new-instance p1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {p1, p3, v0, v1, p2}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    .line 173
    iget-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    :cond_1d
    return-object p1
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 3

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getTransports(I)J
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 384
    if-nez p1, :cond_10

    .line 385
    const-wide/16 v0, 0x0

    return-wide v0

    .line 387
    :cond_10
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isValidCallerType(I)Z
    .registers 5

    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 146
    aget v2, v2, v1

    if-ne p0, v2, :cond_d

    .line 147
    const/4 p0, 0x1

    return p0

    .line 145
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_10
    return v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 392
    return-void
.end method

.method private static projectSnapshotTime(J)J
    .registers 4

    .line 164
    const-wide/32 v0, 0x493e0

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 5

    monitor-enter p0

    .line 127
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 128
    sget-object p2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid caller type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 129
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 131
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_27

    .line 132
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 126
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 325
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 326
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 327
    iget v3, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v3, :cond_1a

    .line 328
    goto :goto_21

    .line 330
    :cond_1a
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 332
    :cond_24
    move v1, v0

    :goto_25
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 333
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 334
    iget v3, v2, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v3, :cond_3c

    .line 335
    goto :goto_43

    .line 337
    :cond_3c
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 339
    :cond_46
    nop

    :goto_47
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 340
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 342
    :cond_61
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 343
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_6d

    .line 344
    monitor-exit p0

    return-void

    .line 324
    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/16 v0, 0x2710

    return v0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    .line 347
    :try_start_1
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 349
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 351
    :cond_20
    move v1, v0

    :goto_21
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 352
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 354
    :cond_39
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, "network statistics:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_4a
    if-ge v3, v2, :cond_54

    aget-object v4, v1, v3

    .line 357
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 359
    :cond_54
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "packet wakeup events:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    move v1, v0

    :goto_60
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 362
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 364
    :cond_74
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/WakeupEvent;

    array-length v2, v1

    :goto_7d
    if-ge v0, v2, :cond_87

    aget-object v3, v1, v0

    .line 365
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_89

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 367
    :cond_87
    monitor-exit p0

    return-void

    .line 346
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos(Ljava/io/PrintWriter;)V
    .registers 5

    monitor-enter p0

    .line 370
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 371
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 373
    :cond_1f
    move v1, v0

    :goto_20
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 374
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 376
    :cond_3c
    nop

    :goto_3d
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 377
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_59

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 379
    :cond_57
    monitor-exit p0

    return-void

    .line 369
    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 247
    invoke-direct {p0, v6, v7, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_10
    if-ge p3, p2, :cond_20

    aget-object v0, p1, p3

    .line 250
    if-eqz v0, :cond_1d

    .line 251
    move-object v1, p4

    move v2, p5

    move-wide v3, v6

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    .line 249
    :cond_1d
    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    .line 254
    :cond_20
    monitor-exit p0

    return-void

    .line 245
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 204
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 205
    move/from16 v0, p1

    invoke-direct {v1, v12, v13, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v2

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v3, p4

    invoke-virtual {v2, v14, v15, v3}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 207
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v9, v11

    const/4 v2, 0x0

    move v10, v2

    :goto_1b
    if-ge v10, v9, :cond_47

    aget-object v2, v11, v10

    .line 208
    if-eqz v2, :cond_3a

    .line 209
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v16, v9

    move/from16 v17, v10

    move-wide v9, v12

    move-object/from16 v18, v11

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_49

    goto :goto_40

    .line 208
    :cond_3a
    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .line 207
    :goto_40
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    move-object/from16 v11, v18

    goto :goto_1b

    .line 213
    :cond_47
    monitor-exit p0

    return-void

    .line 203
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 222
    if-eqz v3, :cond_e

    .line 223
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 221
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 226
    :cond_11
    monitor-exit p0

    return-void

    .line 220
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 235
    if-eqz v3, :cond_e

    .line 236
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 234
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 239
    :cond_11
    monitor-exit p0

    return-void

    .line 233
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 14

    monitor-enter p0

    .line 288
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_30

    .line 296
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    const/4 v2, 0x0

    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_2e

    .line 298
    aget v3, p1, v2

    .line 299
    aget v4, p2, v2

    .line 300
    aget v5, p3, v2

    .line 301
    aget v6, p4, v2

    .line 302
    aget v7, p5, v2

    .line 303
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v3

    .line 304
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_39

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 306
    :cond_2e
    monitor-exit p0

    return-void

    .line 292
    :cond_30
    :goto_30
    :try_start_30
    sget-object p1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string p2, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 293
    monitor-exit p0

    return-void

    .line 287
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 25

    move-object v1, p0

    monitor-enter p0

    .line 259
    :try_start_2
    const-string v0, "iface:"

    const-string v2, ""

    move-object v3, p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    const-wide/16 v2, 0x0

    cmp-long v0, p10, v2

    if-lez v0, :cond_17

    .line 262
    const-wide/32 v2, 0xf4240

    div-long v2, p10, v2

    goto :goto_1b

    .line 264
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 267
    :goto_1b
    new-instance v0, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v0}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 268
    iput-object v5, v0, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 269
    iput-wide v2, v0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 270
    move v2, p2

    iput v2, v0, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 271
    move/from16 v6, p3

    iput v6, v0, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 272
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v3

    iput-object v3, v0, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 273
    move-object/from16 v8, p6

    iput-object v8, v0, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 274
    move-object/from16 v9, p7

    iput-object v9, v0, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 275
    move/from16 v10, p4

    iput v10, v0, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 276
    move/from16 v11, p8

    iput v11, v0, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 277
    move/from16 v12, p9

    iput v12, v0, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 278
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 280
    iget-object v0, v0, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    const/16 v3, 0x2c

    move v4, p2

    move/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p4

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v3 .. v12}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_62

    .line 283
    monitor-exit p0

    return-void

    .line 258
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 137
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    .line 138
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 140
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    .line 141
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 135
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
