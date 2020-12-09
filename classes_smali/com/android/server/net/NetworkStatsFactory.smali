.class public Lcom/android/server/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sPersistentDataLock:Ljava/lang/Object;

.field private static final sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVpnInfos:[Lcom/android/internal/net/VpnInfo;


# instance fields
.field private mNetdService:Landroid/net/INetd;

.field private mPersistSnapshot:Landroid/net/NetworkStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sPersistentDataLock"
        }
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;

.field private mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sPersistentDataLock"
        }
    .end annotation
.end field

.field private final mUseBpfStats:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkStatsFactory;->sPersistentDataLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/net/VpnInfo;

    sput-object v0, Lcom/android/server/net/NetworkStatsFactory;->sVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsFactory;-><init>(Ljava/io/File;Z)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 179
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 181
    iput-boolean p2, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    .line 182
    new-instance p1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p2, -0x1

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    .line 183
    new-instance p1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    .line 184
    return-void
.end method

.method private adjustForTunAnd464Xlat(Landroid/net/NetworkStats;Landroid/net/NetworkStats;[Lcom/android/internal/net/VpnInfo;)Landroid/net/NetworkStats;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sPersistentDataLock"
        }
    .end annotation

    .line 384
    invoke-virtual {p1, p2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p2

    .line 390
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    invoke-virtual {p2, v0, v1}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Ljava/util/Map;Z)V

    .line 393
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    aget-object v2, p3, v1

    .line 394
    iget v3, v2, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v4, v2, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v2}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;[Ljava/lang/String;)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 398
    :cond_1d
    invoke-virtual {p2}, Landroid/net/NetworkStats;->filterDebugEntries()V

    .line 401
    iget-object p3, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {p3, p2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 402
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 404
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public static apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V
    .registers 4

    .line 163
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1, v0, p2}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;Z)V

    .line 165
    return-void
.end method

.method public static augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 136
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p0, v0, :cond_6

    .line 137
    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    sget-object p0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 148
    :cond_39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4c
    :goto_4c
    goto :goto_19

    .line 153
    :cond_4d
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 154
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static clearStackedIfaces()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 169
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 170
    return-void
.end method

.method public static getVpnInfos()[Lcom/android/internal/net/VpnInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sVpnInfos:[Lcom/android/internal/net/VpnInfo;

    invoke-virtual {v0}, [Lcom/android/internal/net/VpnInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/VpnInfo;

    return-object v0
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 417
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 418
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 420
    nop

    .line 421
    nop

    .line 423
    nop

    .line 426
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_19
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_23} :catch_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_23} :catch_bb
    .catchall {:try_start_19 .. :try_end_23} :catchall_b8

    .line 427
    :try_start_23
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_26} :catch_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_26} :catch_b4
    .catchall {:try_start_23 .. :try_end_26} :catchall_b2

    move p0, v3

    .line 429
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 430
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result p0

    .line 431
    add-int/lit8 v4, v3, 0x1

    if-ne p0, v4, :cond_89

    .line 435
    nop

    .line 437
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 438
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 439
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v3

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 440
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v3

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 441
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 442
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 443
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 444
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 446
    if-eqz p2, :cond_74

    iget-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    :cond_74
    const/4 v3, -0x1

    if-eq p1, v3, :cond_7b

    iget v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v4, :cond_84

    :cond_7b
    if-eq p3, v3, :cond_81

    iget v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v3, :cond_84

    .line 449
    :cond_81
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 452
    :cond_84
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    move v3, p0

    goto :goto_27

    .line 432
    :cond_89
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "inconsistent idx="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " after lastIdx="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a8
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_a8} :catch_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_a8} :catch_b0
    .catchall {:try_start_27 .. :try_end_a8} :catchall_b2

    .line 457
    :cond_a8
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 459
    nop

    .line 461
    return-object v1

    .line 454
    :catch_b0
    move-exception p1

    goto :goto_b6

    .line 457
    :catchall_b2
    move-exception p0

    goto :goto_d4

    .line 454
    :catch_b4
    move-exception p1

    move p0, v3

    :goto_b6
    move-object v4, v5

    goto :goto_bd

    .line 457
    :catchall_b8
    move-exception p0

    move-object v5, v4

    goto :goto_d4

    .line 454
    :catch_bb
    move-exception p1

    move p0, v3

    .line 455
    :goto_bd
    :try_start_bd
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "problem parsing idx "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object p0

    throw p0
    :try_end_d4
    .catchall {:try_start_bd .. :try_end_d4} :catchall_b8

    .line 457
    :goto_d4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public static native nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 104
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 105
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_9
    return-void
.end method

.method private static protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;
    .registers 3

    .line 494
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Ljava/net/ProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 496
    return-object v0
.end method

.method private requestSwapActiveStatsMapLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sPersistentDataLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_a

    .line 311
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    .line 313
    :cond_a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 314
    return-void
.end method

.method public static updateVpnInfos([Lcom/android/internal/net/VpnInfo;)V
    .registers 1

    .line 119
    invoke-virtual {p0}, [Lcom/android/internal/net/VpnInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/net/VpnInfo;

    sput-object p0, Lcom/android/server/net/NetworkStatsFactory;->sVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 120
    return-void
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 7

    .line 465
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ne v0, v1, :cond_4e

    .line 470
    nop

    .line 471
    nop

    .line 472
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_f
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 473
    invoke-virtual {p1, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 474
    invoke-virtual {p2, v0, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 475
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 476
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected row "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", actual row "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 480
    :cond_4d
    return-void

    .line 466
    :cond_4e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", actual size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readBpfNetworkStatsDev()Landroid/net/NetworkStats;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 188
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I

    move-result v1

    if-nez v1, :cond_11

    .line 191
    return-object v0

    .line 189
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse bpf iface stats"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sPersistentDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    sget-object v1, Lcom/android/server/net/NetworkStatsFactory;->sVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 333
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v2

    .line 336
    new-instance v9, Landroid/net/NetworkStats;

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v9, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 338
    iget-boolean v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_76

    if-eqz v3, :cond_4e

    .line 340
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsFactory;->requestSwapActiveStatsMapLocked()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_47
    .catchall {:try_start_19 .. :try_end_1c} :catchall_76

    .line 343
    nop

    .line 346
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget-object v6, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v7, -0x1

    iget-boolean v8, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v3

    if-nez v3, :cond_3f

    .line 352
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v9}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 353
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v9}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_63

    .line 348
    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to parse network stats"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :catch_47
    move-exception p1

    .line 342
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 355
    :cond_4e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget-object v6, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v7, -0x1

    iget-boolean v8, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v3

    if-nez v3, :cond_6e

    .line 365
    iput-object v9, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    .line 372
    :goto_63
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/net/NetworkStatsFactory;->adjustForTunAnd464Xlat(Landroid/net/NetworkStats;Landroid/net/NetworkStats;[Lcom/android/internal/net/VpnInfo;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 375
    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 376
    monitor-exit v0

    return-object v1

    .line 357
    :cond_6e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to parse network stats"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_1d .. :try_end_78} :catchall_76

    throw p1
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_9

    .line 206
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 208
    :cond_9
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 210
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 211
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 213
    const/4 v3, 0x0

    .line 215
    :try_start_1d
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_29} :catch_99
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_29} :catch_99
    .catchall {:try_start_1d .. :try_end_29} :catchall_96

    .line 217
    :goto_29
    :try_start_29
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 218
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 219
    const/4 v3, -0x1

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 220
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 221
    const/4 v3, 0x0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 223
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v3, 0x1

    .line 226
    :cond_44
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 227
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 228
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 229
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 232
    if-eqz v3, :cond_82

    .line 233
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 234
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 235
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 236
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 239
    :cond_82
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 240
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_88
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_88} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_88} :catch_93
    .catchall {:try_start_29 .. :try_end_88} :catchall_91

    .line 241
    goto :goto_29

    .line 245
    :cond_89
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 247
    nop

    .line 248
    return-object v1

    .line 245
    :catchall_91
    move-exception v1

    goto :goto_a2

    .line 242
    :catch_93
    move-exception v1

    move-object v3, v4

    goto :goto_9a

    .line 245
    :catchall_96
    move-exception v1

    move-object v4, v3

    goto :goto_a2

    .line 242
    :catch_99
    move-exception v1

    .line 243
    :goto_9a
    :try_start_9a
    const-string/jumbo v2, "problem parsing stats"

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object v1

    throw v1
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_96

    .line 245
    :goto_a2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 246
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_9

    .line 262
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 264
    :cond_9
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    return-object v2

    .line 269
    :cond_17
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x6

    invoke-direct {v1, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 270
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 272
    nop

    .line 275
    :try_start_27
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_33} :catch_79
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_33} :catch_79
    .catchall {:try_start_27 .. :try_end_33} :catchall_76

    .line 276
    :try_start_33
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 278
    :goto_36
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 279
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 280
    const/4 v2, -0x1

    iput v2, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 281
    iput v2, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 282
    const/4 v2, 0x0

    iput v2, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 284
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 285
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 286
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 287
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 289
    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 290
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_68} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_68} :catch_73
    .catchall {:try_start_33 .. :try_end_68} :catchall_71

    goto :goto_36

    .line 295
    :cond_69
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 297
    nop

    .line 298
    return-object v1

    .line 295
    :catchall_71
    move-exception v1

    goto :goto_82

    .line 292
    :catch_73
    move-exception v1

    move-object v2, v4

    goto :goto_7a

    .line 295
    :catchall_76
    move-exception v1

    move-object v4, v2

    goto :goto_82

    .line 292
    :catch_79
    move-exception v1

    .line 293
    :goto_7a
    :try_start_7a
    const-string/jumbo v3, "problem parsing stats"

    invoke-static {v3, v1}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object v1

    throw v1
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_76

    .line 295
    :goto_82
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 296
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
