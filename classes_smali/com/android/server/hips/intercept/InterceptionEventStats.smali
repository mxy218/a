.class public Lcom/android/server/hips/intercept/InterceptionEventStats;
.super Ljava/lang/Object;
.source "InterceptionEventStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;,
        Lcom/android/server/hips/intercept/InterceptionEventStats$EventStatsHoler;
    }
.end annotation


# static fields
.field public static final MSG_GEN_BIGDATA:I = 0x2

.field public static final MSG_PUT_EVENT:I = 0x1


# instance fields
.field private LOG_BUFF_SIZE:I

.field public MAX_REPORT_TIME:J

.field public MAX_STATS_SIZE:J

.field private mBigDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/BigDataInterceptionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBigDataSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/hips/intercept/BigDataInterceptionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;

.field private mInterceptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/InterceptionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastReportTime:J


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, 0x800000

    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->LOG_BUFF_SIZE:I

    .line 33
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_STATS_SIZE:J

    .line 34
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_REPORT_TIME:J

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mLastReportTime:J

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InterceptionEventStatsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v1, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;-><init>(Lcom/android/server/hips/intercept/InterceptionEventStats;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mHandler:Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hips/intercept/InterceptionEventStats$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/hips/intercept/InterceptionEventStats$1;

    .line 31
    invoke-direct {p0}, Lcom/android/server/hips/intercept/InterceptionEventStats;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hips/intercept/InterceptionEventStats;Lcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/InterceptionEventStats;
    .param p1, "x1"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addEventLocked(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    return-void
.end method

.method private addEventLocked(Lcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 9
    .param p1, "event"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 72
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->generateBigDataSync(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mLastReportTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_REPORT_TIME:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_26

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->reportBigData()V

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mLastReportTime:J

    .line 78
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 80
    :cond_26
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5b

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-virtual {v1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    iget-wide v5, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_STATS_SIZE:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_5b

    .line 82
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    :cond_5b
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private avrage(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 156
    .local p1, "total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 157
    .local v0, "a":J
    const-wide/16 v2, 0x0

    .line 158
    .local v2, "t":J
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 159
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_23

    .line 160
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 162
    .end local v4  # "i":I
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 164
    :cond_2a
    return-wide v0
.end method

.method private countAvgTime([Ljava/lang/String;)J
    .registers 10
    .param p1, "args"  # [Ljava/lang/String;

    .line 350
    const-wide/16 v0, -0x1

    .line 351
    .local v0, "result":J
    array-length v2, p1

    .line 352
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "testList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_9
    if-ge v4, v2, :cond_1f

    .line 354
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 355
    .local v5, "num":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v5  # "num":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 357
    .end local v4  # "i":I
    :cond_1f
    invoke-direct {p0, v3}, Lcom/android/server/hips/intercept/InterceptionEventStats;->avrage(Ljava/util/List;)J

    move-result-wide v0

    .line 358
    return-wide v0
.end method

.method private countMedianTime([Ljava/lang/String;)J
    .registers 10
    .param p1, "args"  # [Ljava/lang/String;

    .line 338
    const-wide/16 v0, -0x1

    .line 339
    .local v0, "result":J
    array-length v2, p1

    .line 340
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, "testList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_9
    if-ge v4, v2, :cond_1f

    .line 342
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 343
    .local v5, "num":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v5  # "num":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 345
    .end local v4  # "i":I
    :cond_1f
    invoke-direct {p0, v3}, Lcom/android/server/hips/intercept/InterceptionEventStats;->median(Ljava/util/List;)J

    move-result-wide v0

    .line 346
    return-wide v0
.end method

.method private generateBigDataLocked()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/BigDataInterceptionEvent;",
            ">;"
        }
    .end annotation

    .line 168
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 169
    .local v2, "bigDataInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/BigDataInterceptionEvent;>;"
    iget-object v0, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 170
    iget-object v3, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v3

    .line 171
    :try_start_10
    iget-object v0, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v0, :cond_d1

    .line 172
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_16
    iget-object v5, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d1

    .line 173
    iget-object v5, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 174
    .local v5, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, "stayTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move v7, v0

    .local v7, "j":I
    :goto_37
    iget-object v8, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5e

    .line 177
    if-ne v7, v4, :cond_42

    .line 178
    goto :goto_5b

    .line 180
    :cond_42
    iget-object v8, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 181
    .local v8, "eventNext":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-direct {v1, v5, v8}, Lcom/android/server/hips/intercept/InterceptionEventStats;->isEventEqualWithBigData(Lcom/android/server/hips/intercept/InterceptionEvent;Lcom/android/server/hips/intercept/InterceptionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 182
    invoke-virtual {v8}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v8  # "eventNext":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_5b
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 185
    .end local v7  # "j":I
    :cond_5e
    invoke-direct {v1, v6}, Lcom/android/server/hips/intercept/InterceptionEventStats;->median(Ljava/util/List;)J

    move-result-wide v7

    .line 186
    .local v7, "m":J
    invoke-direct {v1, v6}, Lcom/android/server/hips/intercept/InterceptionEventStats;->avrage(Ljava/util/List;)J

    move-result-wide v16

    .line 187
    .local v16, "a":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v15, v9

    .line 188
    .local v15, "count":I
    new-instance v20, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    int-to-long v10, v15

    .line 189
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v12

    .line 190
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v13

    .line 191
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v14

    .line 192
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v18

    .line 194
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v19

    .line 195
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v21

    move-object/from16 v9, v20

    move/from16 v22, v15

    .end local v15  # "count":I
    .local v22, "count":I
    move/from16 v15, v18

    move/from16 v18, v19

    move/from16 v19, v21

    invoke-direct/range {v9 .. v19}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZ)V

    move-object/from16 v9, v20

    .line 197
    .local v9, "bigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_b4

    .line 198
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v10

    const/16 v11, 0x19

    if-gt v10, v11, :cond_b4

    .line 199
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v10

    const/16 v11, 0xb

    if-eq v10, v11, :cond_b4

    .line 200
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v10

    const/16 v11, 0x17

    if-ne v10, v11, :cond_cd

    .line 201
    :cond_b4
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_cd

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cd

    .line 202
    iget-object v10, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v6  # "stayTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7  # "m":J
    .end local v9  # "bigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    .end local v16  # "a":J
    .end local v22  # "count":I
    :cond_cd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    .line 206
    .end local v4  # "i":I
    :cond_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_10 .. :try_end_d2} :catchall_d5

    .line 207
    iput-object v2, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataList:Ljava/util/List;

    .line 208
    return-object v2

    .line 206
    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v0
.end method

.method private generateBigDataSync(Lcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 14
    .param p1, "event"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 88
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1f

    .line 89
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1f

    .line 90
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1f

    .line 91
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getReason()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_90

    .line 92
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 93
    new-instance v0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    const-wide/16 v2, 0x1

    .line 94
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v8

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v10

    .line 100
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZ)V

    .line 102
    .local v0, "bigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 103
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hips/intercept/BigDataInterceptionEvent;>;"
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    .line 106
    .local v2, "exBigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    invoke-virtual {v2, v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 107
    invoke-virtual {v2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->setCount(J)V

    .line 108
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->addCalleeStayTime(J)V

    .line 109
    goto :goto_8a

    .line 111
    .end local v2  # "exBigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    :cond_89
    goto :goto_65

    .line 112
    .end local v1  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hips/intercept/BigDataInterceptionEvent;>;"
    :cond_8a
    :goto_8a
    goto :goto_90

    .line 113
    :cond_8b
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v0  # "bigEvent":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    :cond_90
    :goto_90
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;
    .registers 1

    .line 56
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats$EventStatsHoler;->access$100()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v0

    return-object v0
.end method

.method private isBigEventEqual(Lcom/android/server/hips/intercept/BigDataInterceptionEvent;Lcom/android/server/hips/intercept/BigDataInterceptionEvent;)Z
    .registers 5
    .param p1, "event1"  # Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    .param p2, "event2"  # Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    .line 280
    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    .line 281
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 282
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 283
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 284
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 285
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 286
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 287
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 288
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 289
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 290
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getRunType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getRunType()I

    move-result v1

    if-ne v0, v1, :cond_72

    .line 291
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isInteraction()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isInteraction()Z

    move-result v1

    if-ne v0, v1, :cond_72

    .line 292
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isIntercept()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isIntercept()Z

    move-result v1

    if-ne v0, v1, :cond_72

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_72
    const/4 v0, 0x0

    return v0
.end method

.method private isEventEqualWithBigData(Lcom/android/server/hips/intercept/InterceptionEvent;Lcom/android/server/hips/intercept/InterceptionEvent;)Z
    .registers 5
    .param p1, "event1"  # Lcom/android/server/hips/intercept/InterceptionEvent;
    .param p2, "event2"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 299
    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    .line 300
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 301
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 302
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 303
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 304
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 305
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 306
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 307
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 308
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 309
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v1

    if-ne v0, v1, :cond_72

    .line 310
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v1

    if-ne v0, v1, :cond_72

    .line 311
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v1

    if-ne v0, v1, :cond_72

    .line 312
    const/4 v0, 0x1

    return v0

    .line 314
    :cond_72
    const/4 v0, 0x0

    return v0
.end method

.method private isInterceptionEventEqual(Lcom/android/server/hips/intercept/InterceptionEvent;Lcom/android/server/hips/intercept/InterceptionEvent;)Z
    .registers 5
    .param p1, "event1"  # Lcom/android/server/hips/intercept/InterceptionEvent;
    .param p2, "event2"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 318
    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    .line 319
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 320
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 321
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 322
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 323
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 324
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 325
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 326
    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 327
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 328
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType()I

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 329
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 330
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getInteraction()Z

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 331
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStartProc()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStartProc()Z

    move-result v1

    if-ne v0, v1, :cond_7c

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_7c
    const/4 v0, 0x0

    return v0
.end method

.method private median(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 142
    .local p1, "total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 143
    .local v0, "j":J
    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 144
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    .local v2, "size":I
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 147
    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_43

    .line 149
    :cond_25
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-int/lit8 v5, v2, 0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long v0, v3, v5

    .line 152
    .end local v2  # "size":I
    :cond_43
    :goto_43
    return-wide v0
.end method

.method private reset()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 274
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 275
    :try_start_c
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    .line 273
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 4
    .param p1, "event"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 60
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 61
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 62
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mHandler:Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 374
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_214

    .line 375
    aget-object v0, p2, v1

    const-string v2, "bigdata"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 376
    const-string v0, ".........................................generate big data.............................................."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v0, " ..............................................interception ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v0, :cond_68

    .line 381
    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "index":I
    :try_start_28
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 384
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 385
    .local v3, "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    add-int/lit8 v1, v1, 0x1

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/InterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    .end local v3  # "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_33

    .line 388
    .end local v1  # "index":I
    :cond_63
    monitor-exit v0

    goto :goto_68

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_28 .. :try_end_67} :catchall_65

    throw v1

    .line 390
    :cond_68
    :goto_68
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 391
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 392
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 393
    const-string v0, " ..............................................big data set ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    if-eqz v0, :cond_2a4

    .line 395
    const/4 v1, 0x0

    .line 396
    .restart local v1  # "index":I
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "it":Ljava/util/Iterator;
    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7f

    .line 401
    .end local v0  # "it":Ljava/util/Iterator;
    .end local v1  # "index":I
    :cond_ad
    goto/16 :goto_2a4

    .line 402
    :cond_af
    aget-object v0, p2, v1

    const-string/jumbo v2, "test_median"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_ed

    array-length v0, p2

    if-lt v0, v2, :cond_ed

    .line 403
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v0, "..........................................test median..................................................."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "median="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/hips/intercept/InterceptionEventStats;->countMedianTime([Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2a4

    .line 408
    :cond_ed
    aget-object v0, p2, v1

    const-string/jumbo v3, "test_avrage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    array-length v0, p2

    if-lt v0, v2, :cond_12a

    .line 409
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v0, "..........................................test avrage..................................................."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "median="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/hips/intercept/InterceptionEventStats;->countAvgTime([Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2a4

    .line 414
    :cond_12a
    aget-object v0, p2, v1

    const-string v2, "buff_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 415
    const-string v0, "............................................set buff size..............................................."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 417
    .local v0, "size":J
    iput-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_STATS_SIZE:J

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buf size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->MAX_STATS_SIZE:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .end local v0  # "size":J
    goto/16 :goto_2a4

    :cond_163
    aget-object v0, p2, v1

    const-string/jumbo v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 421
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v0, "..........................................clear interception stats and bigdata.........................."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->reset()V

    .line 424
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2a4

    .line 427
    :cond_182
    const-string v0, " ..............................................interception ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v0, :cond_1cd

    .line 429
    monitor-enter v0

    .line 430
    :try_start_18c
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 431
    const/4 v1, 0x0

    .line 432
    .restart local v1  # "index":I
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_198
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 433
    .restart local v3  # "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    add-int/lit8 v1, v1, 0x1

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/InterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    .end local v3  # "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_198

    .line 436
    .end local v1  # "index":I
    :cond_1c8
    monitor-exit v0

    goto :goto_1cd

    :catchall_1ca
    move-exception v1

    monitor-exit v0
    :try_end_1cc
    .catchall {:try_start_18c .. :try_end_1cc} :catchall_1ca

    throw v1

    .line 438
    :cond_1cd
    :goto_1cd
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 439
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 440
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 441
    const-string v0, " ..............................................big data set ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    if-eqz v0, :cond_2a4

    .line 443
    const/4 v1, 0x0

    .line 444
    .restart local v1  # "index":I
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 445
    .local v0, "it":Ljava/util/Iterator;
    :goto_1e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_212

    .line 446
    add-int/lit8 v1, v1, 0x1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e4

    .line 449
    .end local v0  # "it":Ljava/util/Iterator;
    .end local v1  # "index":I
    :cond_212
    goto/16 :goto_2a4

    .line 452
    :cond_214
    const-string v0, " ..............................................interception ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v0, :cond_25f

    .line 454
    monitor-enter v0

    .line 455
    const/4 v1, 0x0

    .line 456
    .restart local v1  # "index":I
    :try_start_21f
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 457
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 458
    .restart local v3  # "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    add-int/lit8 v1, v1, 0x1

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/InterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    .end local v3  # "interceptionEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_22a

    .line 461
    .end local v1  # "index":I
    :cond_25a
    monitor-exit v0

    goto :goto_25f

    :catchall_25c
    move-exception v1

    monitor-exit v0
    :try_end_25e
    .catchall {:try_start_21f .. :try_end_25e} :catchall_25c

    throw v1

    .line 463
    :cond_25f
    :goto_25f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 464
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 465
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 466
    const-string v0, " ..............................................big data set ................................................"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    if-eqz v0, :cond_2a4

    .line 468
    const/4 v1, 0x0

    .line 469
    .restart local v1  # "index":I
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 470
    .restart local v0  # "it":Ljava/util/Iterator;
    :goto_276
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 471
    add-int/lit8 v1, v1, 0x1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_276

    .line 476
    .end local v0  # "it":Ljava/util/Iterator;
    .end local v1  # "index":I
    :cond_2a4
    :goto_2a4
    return-void
.end method

.method public generateBigData()V
    .registers 6

    .line 67
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 68
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mHandler:Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void
.end method

.method public getEventLocked()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/InterceptionEvent;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 121
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getSafeInterceptionData()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "safeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v1

    .line 215
    :try_start_8
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v2, :cond_48

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 218
    .local v4, "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    if-eqz v4, :cond_47

    .line 219
    new-instance v12, Lcom/android/server/hips/intercept/SafeInterceptionEvent;

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v6

    .line 220
    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v10

    .line 221
    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStartProc()Z

    move-result v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    move-object v5, v12

    .line 222
    .local v5, "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v4  # "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v5  # "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    :cond_47
    goto :goto_17

    .line 226
    .end local v2  # "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    :cond_48
    monitor-exit v1

    .line 227
    return-object v0

    .line 226
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public getSafeInterceptionData(J)Ljava/util/List;
    .registers 16
    .param p1, "beginTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "safeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v1

    .line 233
    :try_start_8
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v2, :cond_50

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    iget-object v4, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 236
    iget-object v4, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 237
    .local v4, "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-ltz v5, :cond_4d

    .line 238
    new-instance v5, Lcom/android/server/hips/intercept/SafeInterceptionEvent;

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v7

    .line 239
    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v11

    .line 240
    invoke-virtual {v4}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStartProc()Z

    move-result v12

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    .local v5, "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v4  # "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v5  # "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 245
    .end local v2  # "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    .end local v3  # "i":I
    :cond_50
    monitor-exit v1

    .line 246
    return-object v0

    .line 245
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public getSafeInterceptionData(JJ)Ljava/util/List;
    .registers 19
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 251
    .local v2, "safeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    monitor-enter v3

    .line 252
    :try_start_a
    iget-object v0, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    if-eqz v0, :cond_5a

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    iget-object v5, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 255
    iget-object v5, v1, Lcom/android/server/hips/intercept/InterceptionEventStats;->mInterceptionList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 256
    .local v5, "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    if-eqz v5, :cond_57

    .line 257
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_57

    .line 258
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-gtz v6, :cond_57

    .line 259
    new-instance v6, Lcom/android/server/hips/intercept/SafeInterceptionEvent;

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v8

    .line 260
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getIntercept()Z

    move-result v12

    .line 261
    invoke-virtual {v5}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStartProc()Z

    move-result v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 262
    .local v6, "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    invoke-virtual {v6}, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v5  # "interceptEvent":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v6  # "safeEvent":Lcom/android/server/hips/intercept/SafeInterceptionEvent;
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 266
    .end local v0  # "safeInterceptionEventList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/SafeInterceptionEvent;>;"
    .end local v4  # "i":I
    :cond_5a
    monitor-exit v3

    .line 267
    return-object v2

    .line 266
    :catchall_5c
    move-exception v0

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_a .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public reportBigData()V
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats;->mBigDataSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    .line 127
    .local v1, "bigData":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "properties":Ljava/util/HashMap;
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    const-string v4, "caller"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callee"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v3

    const-string v4, "calleeClass"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getRunType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "runType"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getAvgTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "avgTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getMedianTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "medianTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isInteraction()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "interaction"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isIntercept()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "intercept"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "interception"

    invoke-virtual {v3, v5, v4, v2}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    .end local v1  # "bigData":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    .end local v2  # "properties":Ljava/util/HashMap;
    goto/16 :goto_6

    .line 139
    :cond_99
    return-void
.end method
