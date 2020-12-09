.class Lcom/android/server/net/NetworkStatsObservers;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsObservers$StatsContext;,
        Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2

.field private static final MSG_UPDATE_STATS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetworkStatsObservers"


# instance fields
.field private final mDataUsageRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkStatsObservers$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsObservers$1;-><init>(Lcom/android/server/net/NetworkStatsObservers;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsObservers;->handleUnregister(Landroid/net/DataUsageRequest;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return-void
.end method

.method private buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;
    .registers 6

    .line 199
    sget-wide v0, Landroid/app/usage/NetworkStatsManager;->MIN_THRESHOLD_BYTES:J

    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 200
    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_31

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Threshold was too low for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Overriding to a safer default of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkStatsObservers"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_31
    new-instance v2, Landroid/net/DataUsageRequest;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object p1, p1, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    return-object v2
.end method

.method private buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    .registers 14

    .line 211
    const/4 v0, 0x1

    if-gt p5, v0, :cond_10

    .line 212
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-object v0

    .line 216
    :cond_10
    const/4 v1, 0x2

    if-lt p5, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 217
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 114
    monitor-enter p0

    .line 115
    :try_start_5
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_16

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandlerLooperLocked()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    .line 119
    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0

    .line 121
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget v1, v1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method private handleUnregister(Landroid/net/DataUsageRequest;I)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .line 171
    if-nez v0, :cond_d

    .line 173
    return-void

    .line 175
    :cond_d
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_34

    iget v1, v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    if-eq v1, p2, :cond_34

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not owner of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkStatsObservers"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 181
    :cond_34
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget p1, p1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 182
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->access$300(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    .line 183
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->access$400(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V

    .line 184
    return-void
.end method

.method private handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 188
    return-void

    .line 191
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 192
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .line 193
    invoke-static {v1, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->access$500(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 195
    :cond_20
    return-void
.end method


# virtual methods
.method protected getHandlerLooperLocked()Landroid/os/Looper;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStatsObservers"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;
    .registers 12

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    move-result-object p1

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsObservers;->buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    move-result-object p2

    .line 84
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 p5, 0x1

    invoke-virtual {p4, p5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-object p1
.end method

.method public unregister(Landroid/net/DataUsageRequest;I)V
    .registers 7

    .line 94
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    return-void
.end method

.method public updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    .line 107
    new-instance v7, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsObservers$StatsContext;-><init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;J)V

    .line 109
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
