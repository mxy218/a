.class Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkMetricsSnapshot"
.end annotation


# instance fields
.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/NetworkMetrics$Summary;",
            ">;"
        }
    .end annotation
.end field

.field public timeMs:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    return-void
.end method

.method static collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;)",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;-><init>()V

    .line 402
    iput-wide p0, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    .line 403
    const/4 p0, 0x0

    :goto_8
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p0, p1, :cond_22

    .line 404
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/metrics/NetworkMetrics;

    invoke-virtual {p1}, Landroid/net/metrics/NetworkMetrics;->getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;

    move-result-object p1

    .line 405
    if-eqz p1, :cond_1f

    .line 406
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_1f
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    .line 409
    :cond_22
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 414
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics$Summary;

    .line 416
    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics$Summary;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 417
    goto :goto_d

    .line 418
    :cond_21
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%tT.%tL: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
