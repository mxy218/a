.class public final Lcom/android/server/usage/IntervalStats$EventTracker;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTracker"
.end annotation


# instance fields
.field public count:I

.field public curStartTime:J

.field public duration:J

.field public lastEventTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addToEventStats(Ljava/util/List;IJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;IJJ)V"
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 102
    :cond_c
    new-instance v0, Landroid/app/usage/EventStats;

    invoke-direct {v0}, Landroid/app/usage/EventStats;-><init>()V

    .line 103
    iput p2, v0, Landroid/app/usage/EventStats;->mEventType:I

    .line 104
    iget p2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iput p2, v0, Landroid/app/usage/EventStats;->mCount:I

    .line 105
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mTotalTime:J

    .line 106
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mLastEventTime:J

    .line 107
    iput-wide p3, v0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    .line 108
    iput-wide p5, v0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_26
    return-void
.end method

.method public commitTime(J)V
    .registers 9

    .line 84
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 85
    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    sub-long/2addr p1, v0

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 86
    iput-wide v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 88
    :cond_10
    return-void
.end method

.method public update(J)V
    .registers 7

    .line 91
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 93
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 95
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 96
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 97
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    .line 98
    return-void
.end method
