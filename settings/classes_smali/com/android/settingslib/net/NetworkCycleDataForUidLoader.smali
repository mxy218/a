.class public Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrieveDetail:Z

.field private final mUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    .line 45
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    .line 46
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder<",
            "*>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getForegroundUsage(JJI)J
    .registers 15

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method public getUids()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .registers 24

    move-object/from16 v0, p0

    .line 55
    :try_start_2
    iget-object v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v1, v8

    move-wide v10, v1

    :cond_c
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 56
    iget-object v12, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v13, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move/from16 v18, v6

    invoke-virtual/range {v12 .. v18}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(Landroid/net/NetworkTemplate;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-lez v5, :cond_c

    add-long v12, v1, v3

    .line 61
    iget-boolean v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v1, :cond_43

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getForegroundUsage(JJI)J

    move-result-wide v1

    add-long/2addr v10, v1

    :cond_43
    move-wide v1, v12

    goto :goto_c

    :cond_45
    cmp-long v3, v1, v8

    if-lez v3, :cond_78

    .line 67
    new-instance v3, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-direct {v3}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;-><init>()V

    move-wide/from16 v4, p1

    .line 68
    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-wide/from16 v4, p3

    .line 69
    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 70
    invoke-virtual {v3, v1, v2}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 71
    iget-boolean v4, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v4, :cond_66

    sub-long/2addr v1, v10

    .line 72
    invoke-virtual {v3, v1, v2}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setBackgroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    .line 73
    invoke-virtual {v3, v10, v11}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setForegroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    .line 75
    :cond_66
    iget-object v0, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataForUid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6f} :catch_70

    goto :goto_78

    :catch_70
    move-exception v0

    const-string v1, "NetworkDataForUidLoader"

    const-string v2, "Exception querying network detail."

    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_78
    :goto_78
    return-void
.end method