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
    .param p1, "otherTimes"  # Lcom/android/server/job/JobPackageTracker$DataSet;

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
    .registers 6
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 143
    .local v0, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v0, :cond_15

    .line 144
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 145
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 148
    .local v1, "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    if-nez v1, :cond_26

    .line 149
    new-instance v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    move-object v1, v2

    .line 150
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_26
    return-object v1
.end method

.method private printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "duration"  # J
    .param p6, "count"  # I

    .line 375
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 376
    .local v0, "token":J
    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 377
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 379
    return-void
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 15
    .param p1, "out"  # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"  # J

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

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_bc

    .line 260
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 261
    .local v2, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_20
    if-ltz v3, :cond_b8

    .line 262
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 263
    .local v4, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v5

    .line 264
    .local v5, "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
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

    .local v6, "k":I
    :goto_96
    if-ltz v6, :cond_b4

    .line 283
    iget-object v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 284
    .local v7, "type":I
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
    .end local v7  # "type":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_96

    .line 261
    .end local v4  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v5  # "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v6  # "k":I
    :cond_b4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_20

    .line 259
    .end local v2  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v3  # "j":I
    :cond_b8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_11

    .line 289
    .end local v0  # "i":I
    :cond_bc
    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v1, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v0, v1, :cond_c4

    .line 290
    iput v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 292
    :cond_c4
    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v1, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v0, v1, :cond_cc

    .line 293
    iput v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 295
    :cond_cc
    return-void
.end method

.method decActive(ILjava/lang/String;JI)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J
    .param p5, "stopReason"  # I

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 198
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 199
    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 201
    :cond_12
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 202
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 203
    .local v1, "count":I
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    return-void
.end method

.method decActiveTop(ILjava/lang/String;JI)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J
    .param p5, "stopReason"  # I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 217
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 218
    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 220
    :cond_12
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 221
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 222
    .local v1, "count":I
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .registers 12
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 181
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 182
    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 184
    :cond_12
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 185
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .registers 36
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "now"  # J
    .param p6, "nowElapsed"  # J
    .param p8, "filterUid"  # I

    .line 382
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    move/from16 v11, p8

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 383
    .local v12, "token":J
    invoke-virtual {v7, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v14

    .line 385
    .local v14, "period":J
    iget-wide v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 386
    iget-wide v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v0, p6, v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 387
    const-wide v0, 0x10300000003L

    invoke-virtual {v8, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 389
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 390
    .local v6, "NE":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_36
    if-ge v4, v6, :cond_179

    .line 391
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 392
    .local v5, "uid":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_4f

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v11, v0, :cond_4f

    .line 393
    move/from16 v16, v4

    move/from16 v22, v6

    move-wide/from16 v25, v14

    goto/16 :goto_16f

    .line 395
    :cond_4f
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/ArrayMap;

    .line 396
    .local v2, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 397
    .local v3, "NP":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "j":I
    :goto_5e
    if-ge v1, v3, :cond_161

    .line 398
    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3  # "NP":I
    .end local v4  # "i":I
    .local v16, "i":I
    .local v17, "NP":I
    const-wide v3, 0x20b00000004L

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 399
    .local v3, "peToken":J
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 401
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    move-wide/from16 v18, v3

    .end local v3  # "peToken":J
    .local v18, "peToken":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 402
    const-wide v3, 0x10900000002L

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v1

    .end local v1  # "j":I
    .local v21, "j":I
    move-object/from16 v1, v20

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 404
    const-wide v3, 0x10b00000003L

    .line 405
    invoke-virtual {v0, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v22

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 404
    move-object/from16 v24, v0

    .end local v0  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .local v24, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    move-object/from16 v0, p0

    move/from16 v20, v21

    move/from16 v21, v1

    .end local v21  # "j":I
    .local v20, "j":I
    move-object/from16 v1, p1

    move-wide/from16 v25, v14

    move-wide/from16 v14, v18

    move/from16 v18, v17

    move-object/from16 v17, v2

    .end local v2  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .local v14, "peToken":J
    .local v17, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .local v18, "NP":I
    .local v25, "period":J
    move-wide v2, v3

    move/from16 v19, v5

    .end local v5  # "uid":I
    .local v19, "uid":I
    move-wide/from16 v4, v22

    move/from16 v22, v6

    .end local v6  # "NE":I
    .local v22, "NE":I
    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 406
    const-wide v2, 0x10b00000004L

    .line 407
    move-object/from16 v6, v24

    .end local v24  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .local v6, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v1, v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 406
    move/from16 v21, v1

    move-object/from16 v1, p1

    move-object v11, v6

    .end local v6  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .local v11, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 408
    const-wide v2, 0x10b00000005L

    .line 409
    invoke-virtual {v11, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 408
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 411
    const-wide v0, 0x10800000006L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_ef

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v2, :cond_ed

    goto :goto_ef

    :cond_ed
    move v2, v3

    goto :goto_f0

    :cond_ef
    :goto_ef
    move v2, v4

    :goto_f0
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 413
    const-wide v0, 0x10800000007L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v2, :cond_103

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v2, :cond_101

    goto :goto_103

    :cond_101
    move v2, v3

    goto :goto_104

    :cond_103
    :goto_103
    move v2, v4

    :goto_104
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 415
    const-wide v0, 0x10800000008L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v2, :cond_114

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v2, :cond_115

    :cond_114
    move v3, v4

    :cond_115
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 418
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_119
    iget-object v1, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_14c

    .line 419
    const-wide v1, 0x20b00000009L

    .line 420
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 422
    .local v1, "srcToken":J
    const-wide v3, 0x10e00000001L

    iget-object v5, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 423
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 422
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 424
    const-wide v3, 0x10500000002L

    iget-object v5, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 425
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 424
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 427
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 418
    .end local v1  # "srcToken":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_119

    .line 430
    .end local v0  # "k":I
    :cond_14c
    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 397
    .end local v11  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v14  # "peToken":J
    add-int/lit8 v1, v20, 0x1

    move/from16 v11, p8

    move/from16 v4, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v5, v19

    move/from16 v6, v22

    move-wide/from16 v14, v25

    .end local v20  # "j":I
    .local v1, "j":I
    goto/16 :goto_5e

    .end local v16  # "i":I
    .end local v17  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v18  # "NP":I
    .end local v19  # "uid":I
    .end local v22  # "NE":I
    .end local v25  # "period":J
    .restart local v2  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .local v3, "NP":I
    .restart local v4  # "i":I
    .restart local v5  # "uid":I
    .local v6, "NE":I
    .local v14, "period":J
    :cond_161
    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v16, v4

    move/from16 v19, v5

    move/from16 v22, v6

    move-wide/from16 v25, v14

    .line 390
    .end local v1  # "j":I
    .end local v2  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v3  # "NP":I
    .end local v4  # "i":I
    .end local v5  # "uid":I
    .end local v6  # "NE":I
    .end local v14  # "period":J
    .restart local v16  # "i":I
    .restart local v22  # "NE":I
    .restart local v25  # "period":J
    :goto_16f
    add-int/lit8 v4, v16, 0x1

    move/from16 v11, p8

    move/from16 v6, v22

    move-wide/from16 v14, v25

    .end local v16  # "i":I
    .restart local v4  # "i":I
    goto/16 :goto_36

    .line 434
    .end local v4  # "i":I
    .end local v22  # "NE":I
    .end local v25  # "period":J
    .restart local v6  # "NE":I
    .restart local v14  # "period":J
    :cond_179
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
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "header"  # Ljava/lang/String;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "now"  # J
    .param p6, "nowElapsed"  # J
    .param p8, "filterUid"  # I

    .line 317
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v13, p8

    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v14

    .line 318
    .local v14, "period":J
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

    move-wide/from16 v6, p6

    invoke-static {v0, v1, v6, v7, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 322
    const-string v0, ") over "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-static {v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 324
    const-string v4, ":"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 326
    .local v5, "NE":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v5, :cond_177

    .line 327
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 328
    .local v3, "uid":I
    const/4 v0, -0x1

    if-eq v13, v0, :cond_63

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v13, v0, :cond_63

    .line 329
    move/from16 v22, v2

    move-object/from16 v25, v4

    move/from16 v24, v5

    goto/16 :goto_169

    .line 331
    :cond_63
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/ArrayMap;

    .line 332
    .local v1, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 333
    .local v0, "NP":I
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "j":I
    :goto_74
    if-ge v13, v0, :cond_15d

    .line 334
    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 335
    .local v8, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v16, v0

    .end local v0  # "NP":I
    .local v16, "NP":I
    const-string v0, "  "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    invoke-static {v9, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 337
    const-string v0, " / "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v17

    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v19, "pending"

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    .end local v1  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .local v21, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    move-object/from16 v1, p1

    move/from16 v22, v2

    move/from16 v23, v3

    .end local v2  # "i":I
    .end local v3  # "uid":I
    .local v22, "i":I
    .local v23, "uid":I
    move-wide v2, v14

    move-object/from16 v25, v4

    move/from16 v24, v5

    .end local v5  # "NE":I
    .local v24, "NE":I
    move-wide/from16 v4, v17

    move/from16 v6, v20

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 341
    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string v7, "active"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 342
    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string v7, "active-top"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 344
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v0, :cond_e5

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v0, :cond_ea

    .line 345
    :cond_e5
    const-string v0, " (pending)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    :cond_ea
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v0, :cond_f2

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v0, :cond_f7

    .line 348
    :cond_f2
    const-string v0, " (active)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_f7
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v0, :cond_ff

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v0, :cond_104

    .line 351
    :cond_ff
    const-string v0, " (active-top)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    :cond_104
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 354
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_149

    .line 355
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_118
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_146

    .line 357
    if-lez v0, :cond_127

    .line 358
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    :cond_127
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 361
    const-string/jumbo v1, "x "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    .line 364
    .end local v0  # "k":I
    :cond_146
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    .end local v8  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_149
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move-wide/from16 v6, p6

    move/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v5, v24

    move-object/from16 v4, v25

    goto/16 :goto_74

    .end local v16  # "NP":I
    .end local v21  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v22  # "i":I
    .end local v23  # "uid":I
    .end local v24  # "NE":I
    .local v0, "NP":I
    .restart local v1  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .restart local v2  # "i":I
    .restart local v3  # "uid":I
    .restart local v5  # "NE":I
    :cond_15d
    move/from16 v16, v0

    move-object/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v24, v5

    .line 326
    .end local v0  # "NP":I
    .end local v1  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v2  # "i":I
    .end local v3  # "uid":I
    .end local v5  # "NE":I
    .end local v13  # "j":I
    .restart local v22  # "i":I
    .restart local v24  # "NE":I
    :goto_169
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v8, p0

    move-wide/from16 v6, p6

    move/from16 v13, p8

    move/from16 v5, v24

    move-object/from16 v4, v25

    .end local v22  # "i":I
    .restart local v2  # "i":I
    goto/16 :goto_4a

    .line 368
    .end local v2  # "i":I
    .end local v24  # "NE":I
    .restart local v5  # "NE":I
    :cond_177
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Max concurrency: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " total, "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " foreground"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 15
    .param p1, "next"  # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"  # J

    .line 226
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_82

    .line 227
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 228
    .local v1, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_18
    if-ltz v2, :cond_7f

    .line 229
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 230
    .local v3, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
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
    .local v4, "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
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
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v6, 0x0

    if-lez v5, :cond_5e

    .line 241
    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 242
    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 244
    :cond_5e
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_6d

    .line 245
    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 246
    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 248
    :cond_6d
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_7c

    .line 249
    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 250
    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 228
    .end local v3  # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v4  # "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_7c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 226
    .end local v1  # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    .end local v2  # "j":I
    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 255
    .end local v0  # "i":I
    :cond_82
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 5
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 157
    .local v0, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v0, :cond_c

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object v1
.end method

.method getTotalTime(J)J
    .registers 7
    .param p1, "now"  # J

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

    sub-long v0, p1, v0

    return-wide v0
.end method

.method incActive(ILjava/lang/String;J)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 189
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez v1, :cond_10

    .line 190
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 191
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 193
    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 194
    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 208
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez v1, :cond_10

    .line 209
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 210
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 212
    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 213
    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "now"  # J

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 172
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez v1, :cond_10

    .line 173
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 174
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 176
    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 177
    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "period"  # J
    .param p4, "duration"  # J
    .param p6, "count"  # I
    .param p7, "suffix"  # Ljava/lang/String;

    .line 298
    long-to-float v0, p4

    long-to-float v1, p2

    div-float/2addr v0, v1

    .line 299
    .local v0, "fraction":F
    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 300
    .local v1, "percent":I
    const-string/jumbo v2, "x "

    const-string v3, " "

    if-lez v1, :cond_26

    .line 301
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 303
    const-string v3, "% "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 305
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_34

    .line 307
    :cond_26
    if-lez p6, :cond_34

    .line 308
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 310
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :cond_34
    :goto_34
    return-void
.end method
