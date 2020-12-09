.class Lcom/android/server/usage/UserUsageStatsService$2;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UserUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
        "Landroid/app/usage/ConfigurationStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;)V"
        }
    .end annotation

    .line 270
    if-nez p2, :cond_c

    .line 271
    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    return-void

    .line 275
    :cond_c
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 276
    const/4 v0, 0x0

    :goto_13
    if-ge v0, p2, :cond_28

    .line 277
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1, v2}, Landroid/app/usage/ConfigurationStats;-><init>(Landroid/app/usage/ConfigurationStats;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 279
    :cond_28
    return-void
.end method
