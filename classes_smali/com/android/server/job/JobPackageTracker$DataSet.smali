.class final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataSet"
.end annotation


# instance fields
.field final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMaxFgActive:I

.field mMaxTotalActive:I

.field final mStartClockTime:J

.field final mStartElapsedTime:J

.field final mStartUptimeTime:J

.field mSummedTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 136
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 137
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 138
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .registers 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 130
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 131
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 132
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    .line 133
    return-void
.end method

.method private getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 143
    if-nez v0, :cond_14

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 148
    if-nez p1, :cond_24

    .line 149
    new-instance p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {p1}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    .line 150
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_24
    return-object p1
.end method

.method private printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 9

    .line 375
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 376
    const-wide v0, 0x10300000001L

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 377
    const-wide p4, 0x10500000002L

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 378
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 379
    return-void
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 15

    .line 258
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 259
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_bc

    .line 260
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 261
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_20
    if-ltz v3, :cond_b8

    .line 262
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 263
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v5

    .line 264
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 265
    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 266
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 267
    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 268
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 269
    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 270
    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v6, :cond_71

    .line 271
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 272
    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    .line 274
    :cond_71
    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v6, :cond_80

    .line 275
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 276
    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    .line 278
    :cond_80
    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v6, :cond_8f

    .line 279
    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 280
    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    .line 282
    :cond_8f
    iget-object v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_96
    if-ltz v6, :cond_b4

    .line 283
    iget-object v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 284
    iget-object v8, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    iget-object v9, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 285
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 284
    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    add-int/lit8 v6, v6, -0x1

    goto :goto_96

    .line 261
    :cond_b4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_20

    .line 259
    :cond_b8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_11

    .line 289
    :cond_bc
    iget p2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget p3, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p2, p3, :cond_c4

    .line 290
    iput p2, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 292
    :cond_c4
    iget p2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget p3, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, p3, :cond_cc

    .line 293
    iput p2, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 295
    :cond_cc
    return-void
.end method

.method decActive(ILjava/lang/String;JI)V
    .registers 11

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 198
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 199
    iget-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long/2addr p3, v3

    add-long/2addr v1, p3

    iput-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 201
    :cond_11
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 202
    iget-object p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p5, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 203
    iget-object p1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/2addr p2, v0

    invoke-virtual {p1, p5, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    return-void
.end method

.method decActiveTop(ILjava/lang/String;JI)V
    .registers 11

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 217
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 218
    iget-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long/2addr p3, v3

    add-long/2addr v1, p3

    iput-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 220
    :cond_11
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 221
    iget-object p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p5, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 222
    iget-object p1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/2addr p2, v0

    invoke-virtual {p1, p5, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .registers 10

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 181
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 182
    iget-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long/2addr p3, v3

    add-long/2addr v1, p3

    iput-wide v1, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 184
    :cond_11
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 185
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .registers 34

    .line 382
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    move/from16 v11, p8

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 383
    invoke-virtual {v7, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    .line 385
    iget-wide v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-wide v4, 0x10300000001L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 386
    iget-wide v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000002L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 387
    const-wide v2, 0x10300000003L

    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 389
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 390
    const/4 v6, 0x0

    :goto_35
    if-ge v6, v14, :cond_14f

    .line 391
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 392
    const/4 v0, -0x1

    if-eq v11, v0, :cond_4a

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v11, v0, :cond_4a

    .line 393
    move/from16 v18, v6

    goto/16 :goto_14b

    .line 395
    :cond_4a
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArrayMap;

    .line 396
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 397
    const/4 v3, 0x0

    :goto_58
    if-ge v3, v2, :cond_149

    .line 398
    const-wide v0, 0x20b00000004L

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 399
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 401
    move-wide/from16 p6, v0

    const-wide v0, 0x10500000001L

    invoke-virtual {v8, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 402
    const-wide v0, 0x10900000002L

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p3, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 404
    const-wide v16, 0x10b00000003L

    .line 405
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v18

    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 404
    move-wide/from16 v20, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v22, p3

    move/from16 v24, v2

    move/from16 v23, v3

    move-wide/from16 v2, v16

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v4, v18

    move/from16 v18, v6

    move/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 406
    const-wide v2, 0x10b00000004L

    .line 407
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 406
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 408
    const-wide v2, 0x10b00000005L

    .line 409
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 408
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 411
    const-wide v0, 0x10800000006L

    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v3, 0x1

    if-gtz v2, :cond_da

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v2, :cond_d8

    goto :goto_da

    :cond_d8
    const/4 v2, 0x0

    goto :goto_db

    :cond_da
    :goto_da
    move v2, v3

    :goto_db
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 413
    const-wide v0, 0x10800000007L

    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v2, :cond_ee

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v2, :cond_ec

    goto :goto_ee

    :cond_ec
    const/4 v2, 0x0

    goto :goto_ef

    :cond_ee
    :goto_ee
    move v2, v3

    :goto_ef
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 415
    const-wide v0, 0x10800000008L

    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v2, :cond_101

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v2, :cond_100

    goto :goto_101

    :cond_100
    const/4 v3, 0x0

    :cond_101
    :goto_101
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 418
    const/4 v0, 0x0

    :goto_105
    iget-object v1, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_138

    .line 419
    const-wide v1, 0x20b00000009L

    .line 420
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 422
    const-wide v3, 0x10e00000001L

    iget-object v5, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 423
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 422
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 424
    const-wide v3, 0x10500000002L

    iget-object v5, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 425
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 424
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 427
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    .line 430
    :cond_138
    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 397
    add-int/lit8 v3, v23, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v2, v22

    goto/16 :goto_58

    :cond_149
    move/from16 v18, v6

    .line 390
    :goto_14b
    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_35

    .line 434
    :cond_14f
    const-wide v0, 0x10500000005L

    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 435
    const-wide v0, 0x10500000006L

    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 437
    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 438
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 35

    .line 317
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v13, p8

    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v14

    .line 318
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " at "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-wide v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-wide v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v2, p6

    invoke-static {v0, v1, v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 322
    const-string v0, ") over "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-static {v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 324
    const-string v7, ":"

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 326
    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_4c
    if-ge v4, v6, :cond_16f

    .line 327
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 328
    const/4 v0, -0x1

    if-eq v13, v0, :cond_65

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v13, v0, :cond_65

    .line 329
    move/from16 v24, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_165

    .line 331
    :cond_65
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/ArrayMap;

    .line 332
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 333
    move/from16 v1, v16

    :goto_74
    if-ge v1, v3, :cond_15f

    .line 334
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 335
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 p2, v3

    const-string v3, "  "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    invoke-static {v9, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 337
    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "   "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v17

    iget v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v19, "pending"

    move-object v13, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move/from16 v22, p2

    move-object/from16 v21, v2

    move/from16 v23, v3

    move-wide v2, v14

    move/from16 v24, v4

    move/from16 v25, v5

    move-wide/from16 v4, v17

    move/from16 v17, v6

    move/from16 v6, v23

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 341
    invoke-virtual {v13, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string v7, "active"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 342
    invoke-virtual {v13, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string v7, "active-top"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 344
    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v0, :cond_e8

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v0, :cond_ed

    .line 345
    :cond_e8
    const-string v0, " (pending)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    :cond_ed
    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v0, :cond_f5

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v0, :cond_fa

    .line 348
    :cond_f5
    const-string v0, " (active)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_fa
    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v0, :cond_102

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v0, :cond_107

    .line 351
    :cond_102
    const-string v0, " (active-top)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    :cond_107
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 354
    iget-object v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 355
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    move/from16 v0, v16

    :goto_11c
    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_14a

    .line 357
    if-lez v0, :cond_12b

    .line 358
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    :cond_12b
    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 361
    const-string/jumbo v1, "x "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    .line 364
    :cond_14a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    :cond_14d
    add-int/lit8 v1, v20, 0x1

    move/from16 v13, p8

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v24

    move/from16 v5, v25

    goto/16 :goto_74

    :cond_15f
    move/from16 v24, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 326
    :goto_165
    add-int/lit8 v4, v24, 0x1

    move/from16 v13, p8

    move/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_4c

    .line 368
    :cond_16f
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Max concurrency: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total, "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " foreground"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 14

    .line 226
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_82

    .line 227
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 228
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_7f

    .line 229
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 230
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v4, :cond_2c

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v4, :cond_2c

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v4, :cond_7c

    .line 232
    :cond_2c
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v4

    .line 233
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 234
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 235
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 236
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 237
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 238
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 240
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v5, 0x0

    if-lez v4, :cond_5e

    .line 241
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 242
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 244
    :cond_5e
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v4, :cond_6d

    .line 245
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 246
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 248
    :cond_6d
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v4, :cond_7c

    .line 249
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 250
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 228
    :cond_7c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 226
    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 255
    :cond_82
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 157
    if-nez p1, :cond_c

    .line 158
    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_c
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object p1
.end method

.method getTotalTime(J)J
    .registers 7

    .line 164
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    .line 165
    return-wide v0

    .line 167
    :cond_9
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method incActive(ILjava/lang/String;J)V
    .registers 5

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 189
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez p2, :cond_10

    .line 190
    iput-wide p3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 191
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 193
    :cond_10
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 194
    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .registers 5

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 208
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez p2, :cond_10

    .line 209
    iput-wide p3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 210
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 212
    :cond_10
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 213
    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .registers 5

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    .line 172
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez p2, :cond_10

    .line 173
    iput-wide p3, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 174
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 176
    :cond_10
    iget p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 177
    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .registers 8

    .line 298
    long-to-float p4, p4

    long-to-float p2, p2

    div-float/2addr p4, p2

    .line 299
    const/high16 p2, 0x42c80000  # 100.0f

    mul-float/2addr p4, p2

    const/high16 p2, 0x3f000000  # 0.5f

    add-float/2addr p4, p2

    float-to-int p2, p4

    .line 300
    const-string/jumbo p3, "x "

    const-string p4, " "

    if-lez p2, :cond_26

    .line 301
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 303
    const-string p2, "% "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 305
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_34

    .line 307
    :cond_26
    if-lez p6, :cond_34

    .line 308
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 310
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :cond_34
    :goto_34
    return-void
.end method
