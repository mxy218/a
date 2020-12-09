.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private mStatExpiredkeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 86
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    .line 88
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    .line 89
    new-instance p1, Lcom/android/server/notification/NotificationUsageStats$1;

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/32 v1, 0xdbba00

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 2

    .line 268
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    return-object p1
.end method

.method private getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 278
    if-nez v0, :cond_d

    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 281
    :cond_d
    const/4 v1, 0x0

    const-string v2, "__global"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 282
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    aput-object p1, v0, v1

    .line 283
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 297
    if-nez v0, :cond_16

    .line 298
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    .line 302
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .registers 4

    .line 288
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 289
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7

    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 342
    if-eqz p3, :cond_22

    iget-object v2, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 343
    goto :goto_b

    .line 344
    :cond_22
    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 345
    goto :goto_b

    .line 346
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStatsArrays.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStats.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_67

    .line 352
    monitor-exit p0

    return-void

    .line 340
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    .line 306
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4a

    .line 309
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 311
    if-eqz p1, :cond_2c

    iget-object v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 312
    goto :goto_15

    .line 313
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 314
    goto :goto_15

    .line 315
    :cond_34
    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_39} :catch_3a
    .catchall {:try_start_6 .. :try_end_39} :catchall_4a

    .line 318
    goto :goto_3b

    .line 316
    :catch_3a
    move-exception v1

    .line 322
    :goto_3b
    :try_start_3b
    const-string v1, "historical"

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_46} :catch_47
    .catchall {:try_start_3b .. :try_end_46} :catchall_4a

    .line 325
    goto :goto_48

    .line 323
    :catch_47
    move-exception p1

    .line 327
    :goto_48
    monitor-exit p0

    return-object v0

    .line 305
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized emit()V
    .registers 7

    monitor-enter p0

    .line 355
    :try_start_1
    const-string v0, "__global"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 357
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-wide v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_43

    .line 361
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_43
    goto :goto_22

    .line 364
    :cond_44
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    goto :goto_4a

    .line 367
    :cond_5c
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 369
    monitor-exit p0

    return-void

    .line 354
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppEnqueueRate(Ljava/lang/String;)F
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 110
    if-eqz p1, :cond_11

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    monitor-exit p0

    return p1

    .line 113
    :cond_11
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 108
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAlertRateLimited(Ljava/lang/String;)Z
    .registers 2

    monitor-enter p0

    .line 121
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 122
    if-eqz p1, :cond_d

    .line 123
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->isAlertRateLimited()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return p1

    .line 125
    :cond_d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 120
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 237
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 239
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 241
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 242
    monitor-exit p0

    return-void

    .line 236
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_click_longevity"

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 209
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    .line 213
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 215
    monitor-exit p0

    return-void

    .line 208
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_dismiss_longevity"

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 197
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 203
    monitor-exit p0

    return-void

    .line 196
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerEnqueuedByApp(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 134
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 135
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 137
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 138
    monitor-exit p0

    return-void

    .line 132
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverCountQuota(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 260
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 261
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 262
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 264
    :cond_14
    monitor-exit p0

    return-void

    .line 259
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOverRateQuota(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 253
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 255
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 257
    :cond_14
    monitor-exit p0

    return-void

    .line 252
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .registers 9

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    aget-object v2, p1, v1

    .line 221
    if-eqz p2, :cond_13

    .line 222
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 224
    :cond_13
    if-eqz p3, :cond_1b

    .line 225
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 227
    :cond_1b
    if-eqz p4, :cond_24

    .line 228
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    goto :goto_2a

    .line 230
    :cond_24
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 220
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 233
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 234
    monitor-exit p0

    return-void

    .line 218
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 12

    monitor-enter p0

    .line 144
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 145
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-wide v0, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    .line 148
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_30

    aget-object v6, v2, v5

    .line 149
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 150
    invoke-virtual {v6, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 151
    invoke-virtual {v6, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 152
    iget v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasUndecoratedRemoteView()Z

    move-result v9

    if-eqz v9, :cond_29

    goto :goto_2a

    :cond_29
    move v8, v4

    :goto_2a
    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 154
    :cond_30
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 158
    monitor-exit p0

    return-void

    .line 143
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 184
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 185
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 187
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 191
    monitor-exit p0

    return-void

    .line 181
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    monitor-enter p0

    .line 245
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p1

    .line 246
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 247
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 249
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 250
    monitor-exit p0

    return-void

    .line 244
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object p2

    .line 167
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    aget-object v2, p2, v1

    .line 168
    iget v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 170
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 172
    :cond_25
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 174
    iget-object p2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 176
    monitor-exit p0

    return-void

    .line 164
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;
    .registers 4

    .line 332
    if-eqz p3, :cond_9

    .line 333
    iget-object p3, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->remoteViewAggStats(J)Lcom/android/server/notification/PulledStats;

    move-result-object p1

    return-object p1

    .line 336
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
