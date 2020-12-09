.class final Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectivityStatsCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2763
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .registers 2

    .line 2763
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 2767
    iget p1, p1, Landroid/net/Network;->netId:I

    const/16 v0, 0x62

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(III)I

    .line 2769
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 2773
    iget p1, p1, Landroid/net/Network;->netId:I

    const/16 v0, 0x62

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(III)I

    .line 2775
    return-void
.end method
