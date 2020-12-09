.class public Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;,
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_DEFAULT_INTERNET:I = 0x2

.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x3

.field private static final DBG:Z = false

.field public static final EVENT_ON_CAPABILITIES:I = 0x1

.field public static final EVENT_ON_LINKPROPERTIES:I = 0x2

.field public static final EVENT_ON_LOST:I = 0x3

.field public static final NOTIFY_LOCAL_PREFIXES:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultInternetNetwork:Landroid/net/Network;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDunRequired:Z

.field private mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDefaultCellularUpstream:Z

.field private mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mLocalPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lcom/android/internal/util/StateMachine;

.field private mTetheringUpstreamNetwork:Landroid/net/Network;

.field private mVpnInternetNetwork:Landroid/net/Network;

.field private final mWhat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-class v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 116
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    .line 118
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    .line 119
    sget-object p1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 120
    iput p4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 122
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    .line 129
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/NetworkCapabilities;)Z
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(Landroid/net/Network;)V

    return-void
.end method

.method private static allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 553
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkState;

    .line 554
    iget-object v1, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 555
    if-nez v1, :cond_1a

    goto :goto_9

    .line 556
    :cond_1a
    invoke-static {v1}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 557
    goto :goto_9

    .line 559
    :cond_22
    return-object v0
.end method

.method private cm()Landroid/net/ConnectivityManager;
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 416
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 418
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;"
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$1;)V

    .line 521
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 524
    :try_start_1a
    invoke-static {v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1e} :catch_4e

    .line 529
    nop

    .line 530
    if-nez p2, :cond_28

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 531
    goto :goto_a

    .line 534
    :cond_28
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 536
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkState;

    .line 537
    iget-object v5, v4, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 538
    goto :goto_33

    .line 541
    :cond_48
    iput v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    .line 542
    iput-object v4, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    .line 543
    return-object v0

    .line 545
    :cond_4d
    goto :goto_a

    .line 525
    :catch_4e
    move-exception v2

    .line 526
    sget-object v2, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No NetworkCapabilities mapping for legacy type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    goto :goto_a

    .line 547
    :cond_6a
    return-object v0
.end method

.method private static findFirstDunNetwork(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    .line 592
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 593
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->hasCapability(Landroid/net/NetworkState;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    .line 594
    :cond_1e
    goto :goto_4

    .line 596
    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 2

    .line 563
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 564
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 563
    :cond_12
    :goto_12
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method private handleAvailable(Landroid/net/Network;)V
    .registers 11

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v8, Landroid/net/NetworkState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 13

    .line 345
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 346
    if-eqz v0, :cond_2a

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    .line 358
    :cond_13
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 363
    return-void

    .line 350
    :cond_2a
    :goto_2a
    return-void
.end method

.method private handleLost(Landroid/net/Network;)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    .line 388
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 392
    return-void

    .line 401
    :cond_14
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 14

    .line 315
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isVpnInternetNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    .line 317
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 318
    if-eqz v0, :cond_5e

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_5e

    .line 331
    :cond_1b
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 332
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 333
    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v3

    .line 334
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string/jumbo v1, "upstream network signal strength: %s -> %s"

    invoke-virtual {v4, v1, v5}, Landroid/net/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_48
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v10, Landroid/net/NetworkState;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 342
    return-void

    .line 322
    :cond_5e
    :goto_5e
    return-void
.end method

.method private handleResumed(Landroid/net/Network;)V
    .registers 5

    .line 371
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 372
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESUMED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private handleSuspended(Landroid/net/Network;)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 367
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSPENDED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private static hasCapability(Landroid/net/NetworkState;I)Z
    .registers 3

    .line 577
    if-eqz p0, :cond_10

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_10

    iget-object p0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 578
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 577
    :goto_11
    return p0
.end method

.method private static isCellular(Landroid/net/NetworkCapabilities;)Z
    .registers 3

    .line 572
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xf

    .line 573
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    nop

    .line 572
    :goto_14
    return v0
.end method

.method private static isCellular(Landroid/net/NetworkState;)Z
    .registers 1

    .line 568
    if-eqz p0, :cond_c

    iget-object p0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isCellularUpstreamPermitted()Z
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isCellularUpstreamPermitted()Z

    move-result v0

    return v0

    .line 303
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private static isNetworkUsableAndNotCellular(Landroid/net/NetworkState;)Z
    .registers 2

    .line 582
    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_14

    iget-object p0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 583
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 582
    :goto_15
    return p0
.end method

.method private static isVpnInternetNetwork(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    .line 587
    if-eqz p0, :cond_14

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0xc

    .line 588
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 587
    :goto_15
    return p0
.end method

.method private notifyTarget(ILandroid/net/Network;)V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 505
    return-void
.end method

.method private notifyTarget(ILjava/lang/Object;)V
    .registers 6

    .line 508
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 509
    return-void
.end method

.method private recomputeLocalPrefixes()V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 407
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 408
    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 410
    :cond_1d
    return-void
.end method

.method private releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3

    .line 500
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 501
    :cond_9
    return-void
.end method


# virtual methods
.method public getCurrentPreferredUpstream()Landroid/net/NetworkState;
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "tethering_allow_vpn_upstreams"

    invoke-static {v0, v3, v1, v2}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .line 276
    :cond_21
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 277
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    goto :goto_30

    .line 278
    :cond_2f
    move-object v0, v1

    .line 279
    :goto_30
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isNetworkUsableAndNotCellular(Landroid/net/NetworkState;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-object v0

    .line 281
    :cond_37
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v2

    if-nez v2, :cond_3e

    return-object v1

    .line 283
    :cond_3e
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-nez v1, :cond_43

    return-object v0

    .line 287
    :cond_43
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstDunNetwork(Ljava/lang/Iterable;)Landroid/net/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrefixes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public mobileNetworkRequested()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public registerMobileNetworkRequest()V
    .registers 8

    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() is not permitted"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 194
    return-void

    .line 196
    :cond_12
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1f

    .line 197
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() already registered"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 198
    return-void

    .line 203
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x4

    goto :goto_26

    :cond_25
    const/4 v0, 0x5

    :goto_26
    move v5, v0

    .line 205
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 206
    invoke-static {v5}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 211
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 216
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting mobile upstream network: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public releaseMobileNetworkRequest()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_5

    return-void

    .line 224
    :cond_5
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 226
    return-void
.end method

.method public selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 235
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v1

    .line 234
    invoke-static {v0, p1, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred upstream type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 239
    iget v0, p1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    .line 259
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    goto :goto_50

    .line 245
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    if-nez v0, :cond_43

    .line 246
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->maybeRunProvisioning()V

    .line 249
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 250
    goto :goto_50

    .line 254
    :cond_47
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 263
    :cond_50
    :goto_50
    iget-object p1, p1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    return-object p1
.end method

.method public setCurrentUpstream(Landroid/net/Network;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 292
    return-void
.end method

.method public startObserveAllNetworks()V
    .registers 5

    .line 157
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    .line 159
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 160
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 162
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 163
    return-void
.end method

.method public startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V
    .registers 6

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1c

    .line 147
    new-instance v0, Landroid/net/NetworkRequest;

    invoke-direct {v0, p1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    .line 148
    new-instance p1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 149
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 151
    :cond_1c
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    if-nez p1, :cond_22

    .line 152
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 154
    :cond_22
    return-void
.end method

.method public stop()V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mVpnInternetNetwork:Landroid/net/Network;

    .line 170
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 171
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 173
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 174
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    return-void
.end method

.method public updateMobileRequiresDun(Z)V
    .registers 3

    .line 178
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 179
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    .line 180
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mobileNetworkRequested()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 181
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 184
    :cond_17
    return-void
.end method
