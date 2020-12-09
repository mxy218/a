.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$beginTime:J

.field final synthetic val$endTime:J

.field final synthetic val$names:Landroid/util/ArraySet;

.field final synthetic val$obfuscateInstantApps:Z


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJZLandroid/util/ArraySet;)V
    .registers 8

    .line 378
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput-boolean p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$obfuscateInstantApps:Z

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .line 382
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p2

    .line 383
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    .line 384
    nop

    :goto_f
    if-ge p2, v0, :cond_60

    .line 385
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    iget-wide v1, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_20

    .line 386
    return-void

    .line 389
    :cond_20
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 390
    iget-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$obfuscateInstantApps:Z

    if-eqz v2, :cond_2e

    .line 391
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 393
    :cond_2e
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 394
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_39
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 397
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_44
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v2, :cond_4f

    .line 400
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_4f
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v2, :cond_5a

    .line 403
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_5a
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 407
    :cond_60
    return-void
.end method
