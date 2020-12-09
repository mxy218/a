.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 1767
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3

    .line 1767
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .registers 10

    .line 1772
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    .line 1773
    new-instance p1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p1, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object p1

    .line 1778
    :cond_e
    :try_start_e
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_69
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_18} :catch_69

    .line 1781
    nop

    .line 1783
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    array-length v4, p1

    invoke-direct {v0, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1785
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1787
    array-length v3, p1

    move v4, v1

    :goto_2a
    if-ge v4, v3, :cond_68

    aget-object v5, p1, v4

    .line 1789
    :try_start_2e
    iget-object v6, v5, Landroid/net/TetherStatsParcel;->iface:Ljava/lang/String;

    iput-object v6, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1790
    const/4 v6, -0x5

    iput v6, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1791
    iput v1, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 1792
    iput v1, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1793
    iget-wide v6, v5, Landroid/net/TetherStatsParcel;->rxBytes:J

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1794
    iget-wide v6, v5, Landroid/net/TetherStatsParcel;->rxPackets:J

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1795
    iget-wide v6, v5, Landroid/net/TetherStatsParcel;->txBytes:J

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1796
    iget-wide v5, v5, Landroid/net/TetherStatsParcel;->txPackets:J

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1797
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_4c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2e .. :try_end_4c} :catch_50

    .line 1800
    nop

    .line 1787
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 1798
    :catch_50
    move-exception p1

    .line 1799
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tethering stats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_68
    return-object v0

    .line 1779
    :catch_69
    move-exception p1

    .line 1780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "problem parsing tethering stats: "

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 4

    .line 1809
    return-void
.end method
