.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_DATA_SAVER_TOGGLED:I = 0x0

.field private static final MSG_UID_RULES_CHANGES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Connectivity"


# instance fields
.field private final mAvailableNetworks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mRequestedWhitelistJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 70
    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 84
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 88
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    .line 526
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 555
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 98
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    .line 100
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 101
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 102
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 106
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 109
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 66
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArraySet;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 4

    .line 357
    const/16 p1, 0x14

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_15

    .line 358
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_14

    const/4 p2, 0x1

    :cond_14
    return p2

    .line 360
    :cond_15
    return p2
.end method

.method private static isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 11

    .line 324
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkBytes()J

    move-result-wide p0

    .line 325
    const-wide/16 v0, -0x1

    cmp-long p3, p0, v0

    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 327
    return v0

    .line 332
    :cond_c
    nop

    .line 333
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result p3

    .line 334
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p2

    .line 332
    invoke-static {p3, p2}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result p2

    int-to-long p2, p2

    .line 335
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_21

    .line 337
    return v0

    .line 340
    :cond_21
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p0

    const-wide/16 v3, 0x400

    mul-long/2addr v3, p2

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    div-long/2addr v1, v3

    .line 342
    const-wide/32 v3, 0x927c0

    cmp-long v3, v1, v3

    if-lez v3, :cond_60

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimated "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes over "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " kbps network would take "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms; that\'s insane!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Connectivity"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 p0, 0x1

    return p0

    .line 348
    :cond_60
    return v0
.end method

.method private static isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 6

    .line 375
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 376
    return v0

    .line 380
    :cond_c
    new-instance p1, Landroid/net/NetworkCapabilities;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v1, 0xb

    .line 382
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 383
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 385
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 387
    :cond_33
    return v0
.end method

.method static isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 395
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-nez p2, :cond_6

    goto :goto_24

    .line 398
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 401
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    .line 404
    :cond_14
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    return v2

    .line 407
    :cond_1c
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v2

    .line 409
    :cond_23
    return v0

    .line 395
    :cond_24
    :goto_24
    return v0
.end method

.method private static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .registers 4

    .line 367
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    iget-object p0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 368
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    .line 367
    return p0
.end method

.method private revokeStandbyExceptionLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 303
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking standby exception for UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1a
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 305
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 306
    return-void
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 415
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    return p1
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 9

    .line 422
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 423
    :goto_c
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 423
    invoke-virtual {v3, p2, v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 427
    :goto_21
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {p1, p2, p3, v3}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result p3

    .line 429
    if-eqz v0, :cond_2c

    if-eqz p3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 430
    :goto_2d
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    move-result v1

    .line 435
    iput-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 437
    sget-boolean p2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p2, :cond_6d

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connectivity "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_46

    const-string v2, "CHANGED"

    goto :goto_49

    :cond_46
    const-string/jumbo v2, "unchanged"

    :goto_49
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": connected="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " satisfied="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Connectivity"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_6d
    return v1
.end method

.method private updateTrackedJobs(ILandroid/net/Network;)V
    .registers 7

    .line 454
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 459
    const/4 v2, 0x0

    .line 460
    const/4 v3, -0x1

    if-ne p1, v3, :cond_26

    .line 461
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_32

    .line 462
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 461
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    .line 466
    :cond_26
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z

    move-result v2

    .line 469
    :cond_32
    if-eqz v2, :cond_39

    .line 470
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 472
    :cond_39
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Landroid/net/Network;",
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkCapabilities;",
            ">;)Z"
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_60

    .line 481
    :cond_a
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_1f

    iget v2, v1, Landroid/net/Network;->netId:I

    goto :goto_20

    :cond_1f
    const/4 v2, -0x1

    .line 483
    :goto_20
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 484
    if-nez v3, :cond_31

    .line 485
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 486
    invoke-virtual {p3, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    :cond_31
    const/4 p3, 0x1

    if-eqz p2, :cond_3d

    .line 489
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_3d

    :cond_3b
    move p2, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move p2, p3

    .line 491
    :goto_3e
    nop

    .line 492
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, p3

    :goto_44
    if-ltz v2, :cond_5f

    .line 493
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    .line 498
    if-nez p2, :cond_56

    iget-object v4, p3, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 499
    :cond_56
    invoke-direct {p0, p3, v1, v3}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p3

    or-int/2addr p3, v0

    move v0, p3

    .line 492
    :cond_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    .line 502
    :cond_5f
    return v0

    .line 478
    :cond_60
    :goto_60
    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 641
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 643
    const/4 v9, 0x0

    :goto_12
    iget-object v10, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_88

    .line 644
    iget-object v10, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 645
    const/4 v11, 0x0

    :goto_23
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v11, v12, :cond_7b

    .line 646
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 647
    move-object/from16 v13, p4

    invoke-interface {v13, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    .line 648
    move/from16 p3, v9

    move-wide v8, v4

    goto :goto_75

    .line 650
    :cond_3b
    const-wide v14, 0x20b00000002L

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 652
    move/from16 p3, v9

    const-wide v8, 0x10b00000001L

    invoke-virtual {v12, v1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 654
    const-wide v8, 0x10500000002L

    .line 655
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 654
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 656
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 657
    if-eqz v4, :cond_6d

    .line 658
    const-wide v8, 0x10b00000003L

    invoke-virtual {v4, v1, v8, v9}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_72

    .line 657
    :cond_6d
    const-wide v8, 0x10b00000003L

    .line 662
    :goto_72
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 645
    :goto_75
    add-int/lit8 v11, v11, 0x1

    move-wide v4, v8

    move/from16 v9, p3

    goto :goto_23

    .line 643
    :cond_7b
    move-object/from16 v13, p4

    move/from16 p3, v9

    move-wide v8, v4

    add-int/lit8 v4, p3, 0x1

    move-wide/from16 v16, v8

    move v9, v4

    move-wide/from16 v4, v16

    goto :goto_12

    .line 666
    :cond_88
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 667
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 668
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_44

    .line 598
    const-string v0, "Requested standby exceptions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_41

    .line 600
    const-string v2, " "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 602
    const-string v2, " ("

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 604
    const-string v2, " jobs)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 606
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 608
    :cond_44
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 609
    const-string v0, "Available networks:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 611
    move v0, v1

    :goto_55
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 612
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 614
    :cond_69
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_72

    .line 616
    :cond_6d
    const-string v0, "No available networks"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 618
    :goto_72
    move v0, v1

    :goto_73
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_c4

    .line 619
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 620
    move v3, v1

    :goto_84
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_c1

    .line 621
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 622
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 623
    goto :goto_be

    .line 625
    :cond_97
    const-string v5, "#"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 627
    const-string v5, " from "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {p1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 629
    const-string v5, ": "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 620
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 618
    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 634
    :cond_c4
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_7

    .line 233
    return-void

    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_e

    .line 237
    return-void

    .line 241
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConnectivityLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "evaluateStateLocked finds job "

    const-string v2, "JobScheduler.Connectivity"

    if-eqz v0, :cond_37

    .line 242
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_55

    .line 247
    :cond_37
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_52

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would not be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 252
    :goto_55
    return-void
.end method

.method public isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 11

    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 161
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .line 162
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 164
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 165
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v6, :cond_53

    .line 166
    const-string v6, "JobScheduler.Connectivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNetworkAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") with network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and capabilities "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Satisfied="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_53
    if-eqz v5, :cond_58

    .line 170
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 160
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 173
    :cond_5b
    monitor-exit v0

    return v1

    .line 174
    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method isStandbyExceptionRequestedLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 207
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 276
    return-void

    .line 278
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 279
    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1d

    .line 280
    const-string p1, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_2a

    goto :goto_2e

    .line 294
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->revokeStandbyExceptionLocked(I)V

    .line 295
    return-void

    .line 286
    :cond_2e
    :goto_2e
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_4f

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " jobs left."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4f
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 117
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 118
    if-nez p2, :cond_25

    .line 119
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :cond_25
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 125
    :cond_2c
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 131
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 132
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 133
    if-eqz p2, :cond_18

    .line 134
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 138
    :cond_1b
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 312
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_2e

    .line 145
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "JobScheduler.Connectivity"

    const-string v1, "Revoking all standby exceptions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 147
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 148
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 150
    :cond_29
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 152
    :cond_2e
    return-void
.end method

.method public onNetworkActive()V
    .registers 9

    .line 510
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_53

    .line 512
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 513
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1b
    if-ltz v3, :cond_50

    .line 514
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 515
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 516
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_48

    .line 517
    const-string v5, "JobScheduler.Connectivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " due to network activity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_48
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5, v4}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 513
    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 511
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 523
    :cond_53
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public reevaluateStateLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_7

    .line 258
    return-void

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 262
    if-nez p1, :cond_12

    .line 263
    return-void

    .line 265
    :cond_12
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_26

    .line 266
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 268
    :cond_26
    return-void
.end method

.method requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 188
    if-nez v2, :cond_1c

    .line 189
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_1c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "JobScheduler.Connectivity"

    if-eqz p1, :cond_46

    if-eqz v1, :cond_27

    goto :goto_46

    .line 198
    :cond_27
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting standby exception for UID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3f
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 200
    return-void

    .line 193
    :cond_46
    :goto_46
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_50

    .line 194
    const-string/jumbo p1, "requestStandbyExceptionLocked found exception already requested."

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_50
    return-void
.end method

.method wouldBeReadyWithConnectivityLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 214
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wouldBeReadyWithConnectivityLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Connectivity"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2b
    if-eqz v0, :cond_37

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    return p1
.end method
