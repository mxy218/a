.class Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/net/NetworkStats$NonMonotonicObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxNonMonotonicObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/NetworkStats$NonMonotonicObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .line 1775
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .registers 3

    .line 1775
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V
    .registers 12

    .line 1775
    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V

    return-void
.end method

.method public foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V
    .registers 9

    .line 1779
    const-string v0, "NetworkStats"

    const-string v1, "Found non-monotonic values; saving to dropbox"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found non-monotonic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " values at left["

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] - right["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    const-string p2, "left="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1786
    const-string/jumbo p2, "right="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1788
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    .line 1789
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1788
    const-string/jumbo p3, "netstats_error"

    invoke-virtual {p1, p3, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    return-void
.end method

.method public bridge synthetic foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V
    .registers 4

    .line 1775
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/String;)V

    return-void
.end method

.method public foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/String;)V
    .registers 7

    .line 1795
    const-string v0, "NetworkStats"

    const-string v1, "Found non-monotonic values; saving to dropbox"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found non-monotonic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " values at ["

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string/jumbo p2, "stats="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1801
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    .line 1802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1801
    const-string/jumbo p3, "netstats_error"

    invoke-virtual {p1, p3, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    return-void
.end method
