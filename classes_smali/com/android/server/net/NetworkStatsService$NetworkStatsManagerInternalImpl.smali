.class Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;
.super Lcom/android/server/net/NetworkStatsManagerInternal;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .line 1474
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/net/NetworkStatsService;
    .param p2, "x1"  # Lcom/android/server/net/NetworkStatsService$1;

    .line 1474
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .registers 4
    .param p1, "thresholdBytes"  # J

    .line 1502
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;J)V

    .line 1503
    return-void
.end method

.method public forceUpdate()V
    .registers 2

    .line 1507
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsService;->forceUpdate()V

    .line 1508
    return-void
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 1477
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkTotalBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1479
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1481
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1479
    return-wide v2

    .line 1481
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "template"  # Landroid/net/NetworkTemplate;
    .param p2, "start"  # J
    .param p4, "end"  # J

    .line 1487
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkUidBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1489
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1491
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1489
    return-object v2

    .line 1491
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setUidForeground(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "uidForeground"  # Z

    .line 1497
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->setUidForeground(IZ)V

    .line 1498
    return-void
.end method
