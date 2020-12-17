.class Lcom/android/server/usage/UserUsageStatsService$1;
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
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 9
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p3, "accResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez p2, :cond_c

    .line 255
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-void

    .line 259
    :cond_c
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 260
    .local v0, "statCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_33

    .line 263
    new-instance v2, Landroid/app/usage/UsageStats;

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-direct {v2, v3}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    .line 264
    .local v2, "s":Landroid/app/usage/UsageStats;
    iget-object v3, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const-string v4, "com.meizu.regservice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 265
    goto :goto_30

    .line 267
    :cond_2d
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v2  # "s":Landroid/app/usage/UsageStats;
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 270
    .end local v1  # "i":I
    :cond_33
    return-void
.end method
