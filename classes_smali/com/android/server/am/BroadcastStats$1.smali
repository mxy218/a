.class Lcom/android/server/am/BroadcastStats$1;
.super Ljava/lang/Object;
.source "BroadcastStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/BroadcastStats$ActionEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/BroadcastStats$ActionEntry;Lcom/android/server/am/BroadcastStats$ActionEntry;)I
    .registers 7

    .line 37
    iget-wide v0, p1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    iget-wide v2, p2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 38
    const/4 p1, -0x1

    return p1

    .line 40
    :cond_a
    iget-wide v0, p1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    iget-wide p1, p2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_14

    .line 41
    const/4 p1, 0x1

    return p1

    .line 43
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 35
    check-cast p1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    check-cast p2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastStats$1;->compare(Lcom/android/server/am/BroadcastStats$ActionEntry;Lcom/android/server/am/BroadcastStats$ActionEntry;)I

    move-result p1

    return p1
.end method
