.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RankingHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .registers 12

    .line 44
    const-string v0, "."

    const-string v1, "RankingHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v2}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 37
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 47
    new-instance p1, Lcom/android/server/notification/NotificationComparator;

    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 49
    array-length p1, p6

    .line 50
    new-array p2, p1, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 51
    const/4 p2, 0x0

    :goto_28
    if-ge p2, p1, :cond_a1

    .line 53
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    aget-object v3, p6, p2

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 54
    nop

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 56
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 57
    invoke-interface {v2, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 58
    invoke-interface {v2, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 59
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v2, v3, p2
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_4c} :catch_83
    .catch Ljava/lang/InstantiationException; {:try_start_2a .. :try_end_4c} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_4c} :catch_4d

    goto :goto_9d

    .line 64
    :catch_4d
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    .line 62
    :catch_68
    move-exception v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 60
    :catch_83
    move-exception v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find extractor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p6, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_9d
    nop

    .line 51
    :goto_9e
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 68
    :cond_a1
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    .line 177
    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length p2, p2

    .line 178
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_1d

    .line 179
    const-wide v1, 0x20900000001L

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v3, v3, v0

    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 182
    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 164
    iget-object p3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length p3, p3

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v0, "mSignalExtractors.length = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_2b

    .line 169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 173
    :cond_2b
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 84
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_21

    .line 85
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 87
    :try_start_a
    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_15

    .line 89
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v3, v2}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    .line 93
    :cond_15
    goto :goto_1e

    .line 91
    :catchall_16
    move-exception v2

    .line 92
    const-string v3, "RankingHelper"

    const-string v4, "NotificationSignalExtractor failed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 95
    :cond_21
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 73
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 74
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 76
    return-object v2

    .line 73
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 79
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public sort(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_15

    .line 101
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 105
    :cond_15
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 109
    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_43

    .line 110
    :try_start_21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 111
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 112
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 113
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 114
    if-nez v6, :cond_3d

    .line 115
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 152
    :catchall_40
    move-exception p1

    goto/16 :goto_ef

    .line 120
    :cond_43
    move v3, v2

    :goto_44
    if-ge v3, v0, :cond_e3

    .line 121
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 122
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 123
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v6

    .line 131
    if-nez v6, :cond_66

    .line 132
    const-string/jumbo v6, "nsk"

    goto :goto_82

    .line 133
    :cond_66
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 134
    const-string v6, "esk"

    goto :goto_82

    .line 136
    :cond_71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    :goto_82
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    .line 140
    const-string v8, "crtcl=0x%04x:intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 142
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 144
    nop

    .line 143
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v10

    const/16 v11, 0x30

    const/16 v12, 0x31

    const/4 v13, 0x1

    if-eqz v10, :cond_ad

    .line 144
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    if-le v10, v13, :cond_ad

    .line 145
    move v10, v11

    goto :goto_ae

    :cond_ad
    move v10, v12

    .line 143
    :goto_ae
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    .line 146
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x3

    .line 147
    if-eqz v7, :cond_c3

    goto :goto_c4

    :cond_c3
    move v11, v12

    :goto_c4
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x4

    aput-object v6, v9, v5

    const/4 v5, 0x5

    .line 149
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 141
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_44

    .line 151
    :cond_e3
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 152
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_21 .. :try_end_e9} :catchall_40

    .line 155
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    return-void

    .line 152
    :goto_ef
    :try_start_ef
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_40

    throw p1
.end method
