.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessLevel:I

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingUid:I

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$callingUid:I

.field final synthetic val$usedFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;ILjava/lang/String;I)V
    .registers 5

    .line 577
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingUid:I

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 578
    iget p1, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingUid:I

    iput p1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 579
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    .line 580
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p2, p1}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 588
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v1, :cond_17

    .line 589
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 591
    :cond_17
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v0

    return-object v1

    .line 592
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v1, :cond_17

    .line 598
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 600
    :cond_17
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v0

    return-object v1

    .line 601
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 681
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 682
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 15

    .line 612
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .registers 9

    .line 625
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v4, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v5, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object p1

    return-object p1
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 19

    .line 652
    move-object v0, p0

    if-nez p4, :cond_21

    .line 653
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    iget v11, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v0, v1

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 656
    :cond_21
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    iget v11, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v0, v1

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .registers 23

    .line 666
    move-object v0, p0

    if-nez p4, :cond_1e

    .line 667
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v2, 0x0

    iget v11, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v0, v1

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 669
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v3, p2

    if-ne v3, v1, :cond_40

    .line 670
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v2, 0x0

    iget v11, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v0, v1

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 673
    :cond_40
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot access tag information from a different uid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRelevantUids()[I
    .registers 3

    .line 606
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .registers 16

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v6, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 634
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 635
    if-eqz p6, :cond_23

    .line 636
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 637
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object p1

    .line 638
    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_23} :catch_24

    .line 640
    :cond_23
    return-object v0

    .line 641
    :catch_24
    move-exception p1

    .line 643
    const-string p2, "NetworkStats"

    const-string p3, "NullPointerException in getSummaryForAllUid"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    throw p1
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 15

    .line 619
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method
