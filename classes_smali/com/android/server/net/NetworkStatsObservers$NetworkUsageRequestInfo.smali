.class Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .registers 7

    .line 334
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    .line 335
    return-void
.end method

.method private getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J
    .registers 10

    .line 365
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v6, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCallingUid:I

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected checkStats()Z
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-object v0, v0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 344
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-wide v2, v2, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 345
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 7

    .line 355
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mXtSnapshot:Landroid/net/NetworkStats;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveIfaces:Landroid/util/ArrayMap;

    iget-wide v3, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 357
    return-void
.end method
