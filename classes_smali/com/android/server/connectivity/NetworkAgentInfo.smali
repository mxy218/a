.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x3e9

.field private static final REMOVE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public avoidUnvalidated:Z

.field public volatile captivePortalValidationPending:Z

.field public final clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everCaptivePortalDetected:Z

.field public everConnected:Z

.field public everValidated:Z

.field public final factorySerialNumber:I

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLingerExpiryMs:J

.field private mLingerMessage:Lcom/android/internal/util/WakeupMessage;

.field private final mLingerTimerForRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLingerTimers:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLingering:Z

.field private volatile mNetworkMonitor:Landroid/net/NetworkMonitorManager;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNumBackgroundNetworkRequests:I

.field private mNumRequestNetworkRequests:I

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public partialConnectivity:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 252
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Lcom/android/server/ConnectivityService;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;I)V
    .registers 21

    .line 261
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    .line 212
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    .line 233
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    .line 236
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 239
    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 262
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    .line 263
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 264
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 265
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 266
    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 267
    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 268
    move v1, p7

    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 269
    new-instance v1, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    .line 270
    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    .line 271
    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    .line 272
    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    .line 273
    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    .line 274
    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .line 275
    return-void
.end method

.method private getCurrentScore(Z)I
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_11

    .line 482
    :cond_e
    const/16 p1, 0x64

    return p1

    .line 485
    :cond_11
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 486
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v1, :cond_27

    if-nez p1, :cond_27

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->ignoreWifiUnvalidationPenalty()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result p1

    if-nez p1, :cond_27

    .line 487
    add-int/lit8 v0, v0, -0x28

    .line 489
    :cond_27
    if-gez v0, :cond_2a

    const/4 v0, 0x0

    .line 490
    :cond_2a
    return v0
.end method

.method private ignoreWifiUnvalidationPenalty()Z
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    .line 497
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 498
    :goto_17
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v3

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v3, :cond_24

    goto :goto_26

    :cond_24
    move v3, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v1

    .line 499
    :goto_27
    if-eqz v0, :cond_30

    if-nez v3, :cond_30

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1
.end method

.method private updateRequestCounts(ZLandroid/net/NetworkRequest;)V
    .registers 6

    .line 332
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, -0x1

    .line 333
    :goto_6
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo$1;->$SwitchMap$android$net$NetworkRequest$Type:[I

    iget-object v2, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_40

    const/4 v0, 0x2

    if-eq v1, v0, :cond_35

    const/4 p1, 0x3

    if-eq v1, p1, :cond_34

    const/4 p1, 0x4

    if-eq v1, p1, :cond_34

    .line 349
    sget-object p1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled request type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 345
    :cond_34
    goto :goto_46

    .line 339
    :cond_35
    iget p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 340
    iget p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    .line 341
    goto :goto_46

    .line 335
    :cond_40
    iget p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    .line 336
    nop

    .line 352
    :goto_46
    return-void
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .registers 9

    .line 360
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 361
    const/4 v1, 0x0

    if-ne v0, p1, :cond_e

    return v1

    .line 362
    :cond_e
    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 365
    sget-object v3, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const/4 v5, 0x2

    .line 366
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 365
    const-string v5, "Duplicate requestId for %s and %s on %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 369
    :cond_2d
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 371
    return v2
.end method

.method public clearLingerState()V
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_a

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 609
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 610
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 611
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 613
    return-void
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3

    .line 647
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 117
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p1

    return p1
.end method

.method public connService()Lcom/android/server/ConnectivityService;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public dumpLingerTimers(Ljava/io/PrintWriter;)V
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 617
    :cond_16
    return-void
.end method

.method public getCurrentScore()I
    .registers 2

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .registers 2

    .line 511
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getLingerExpiry()J
    .registers 3

    .line 563
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    return-wide v0
.end method

.method public getNetworkState()Landroid/net/NetworkState;
    .registers 9

    .line 519
    monitor-enter p0

    .line 522
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v0, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move-object v6, v0

    .line 523
    new-instance v0, Landroid/net/NetworkState;

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 526
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public handler()Landroid/os/Handler;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isBackgroundNetwork()Z
    .registers 2

    .line 441
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    if-lez v0, :cond_18

    .line 442
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 441
    :goto_19
    return v0
.end method

.method public isLingering()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return v0
.end method

.method public isSatisfyingRequest(I)Z
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isSuspended()Z
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isVPN()Z
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public linger()V
    .registers 2

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 594
    return-void
.end method

.method public lingerRequest(Landroid/net/NetworkRequest;JJ)V
    .registers 9

    .line 534
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 538
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already lingered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2e
    add-long/2addr p2, p4

    .line 541
    new-instance p4, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;-><init>(Landroid/net/NetworkRequest;J)V

    .line 543
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {p2, p4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget p1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p2, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 641
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    return-object v0
.end method

.method public netMisc()Landroid/net/NetworkMisc;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    return-object v0
.end method

.method public network()Landroid/net/Network;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v0
.end method

.method public networkMonitor()Landroid/net/NetworkMonitorManager;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    return-object v0
.end method

.method public numBackgroundNetworkRequests()I
    .registers 2

    .line 415
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    return v0
.end method

.method public numForegroundNetworkRequests()I
    .registers 3

    .line 422
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public numNetworkRequests()I
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public numRequestNetworkRequests()I
    .registers 2

    .line 407
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    return v0
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .registers 3

    .line 281
    new-instance v0, Landroid/net/NetworkMonitorManager;

    invoke-direct {v0, p1}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    .line 282
    return-void
.end method

.method public removeRequest(I)V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 379
    if-nez v0, :cond_b

    return-void

    .line 380
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 382
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 385
    :cond_1d
    return-void
.end method

.method public requestAt(I)Landroid/net/NetworkRequest;
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkRequest;

    return-object p1
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .registers 3

    .line 456
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_10

    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 457
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 456
    :goto_11
    return p1
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .registers 3

    .line 461
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_10

    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 462
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 461
    :goto_11
    return p1
.end method

.method public setCurrentScore(I)V
    .registers 2

    .line 515
    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    .line 516
    return-void
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 293
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkMonitor:Landroid/net/NetworkMonitorManager;

    .line 294
    if-eqz v0, :cond_9

    .line 295
    invoke-virtual {v0, p1}, Landroid/net/NetworkMonitorManager;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z

    .line 297
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nethandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 623
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lingering{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} acceptUnvalidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} everCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} lastCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} captivePortalValidationPending{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} partialConnectivity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} acceptPartialConnectivity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} clat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    return-object v0
.end method

.method public unlinger()V
    .registers 2

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    .line 598
    return-void
.end method

.method public unlingerRequest(Landroid/net/NetworkRequest;)Z
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 553
    if-eqz v0, :cond_1a

    .line 555
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget p1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 557
    const/4 p1, 0x1

    return p1

    .line 559
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public updateLingerTimer()V
    .registers 12

    .line 567
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_c

    move-wide v3, v1

    goto :goto_16

    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    iget-wide v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 568
    :goto_16
    iget-wide v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1d

    return-void

    .line 576
    :cond_1d
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_27

    .line 577
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 581
    :cond_27
    cmp-long v0, v3, v1

    if-lez v0, :cond_54

    .line 582
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK_LINGER_COMPLETE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e9

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/ConnectivityService;->makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    .line 586
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 589
    :cond_54
    iput-wide v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    .line 590
    return-void
.end method
