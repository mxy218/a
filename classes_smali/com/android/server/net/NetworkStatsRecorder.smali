.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 99
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 100
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 101
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 105
    const-wide v1, 0x7528ad000L

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 108
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 109
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 111
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 119
    const-string v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/FileRotator;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 120
    const-string p1, "missing NonMonotonicObserver"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 121
    const-string p1, "missing DropBoxManager"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 122
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 124
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 125
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 127
    new-instance p1, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {p1, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 128
    new-instance p1, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {p1, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 130
    new-instance p1, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object p2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {p1, p2}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 131
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 14

    .line 188
    const-string/jumbo v0, "problem completely reading network stats"

    const-string v1, "NetworkStatsRecorder"

    new-instance v8, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v8, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 190
    :try_start_c
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    move-object v3, v8

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 191
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v8, p1}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_29

    .line 195
    :catch_1a
    move-exception p1

    .line 196
    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_2a

    .line 192
    :catch_22
    move-exception p1

    .line 193
    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 198
    :goto_29
    nop

    .line 199
    :goto_2a
    return-object v8
.end method

.method private recoverFromWtf()V
    .registers 5

    .line 493
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 495
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_10
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 500
    :goto_a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 501
    goto :goto_15

    .line 500
    :catchall_e
    move-exception v1

    goto :goto_28

    .line 496
    :catch_10
    move-exception v1

    .line 498
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    goto :goto_a

    .line 502
    :goto_15
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "netstats_dump"

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 505
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 506
    return-void

    .line 500
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 12

    .line 484
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 485
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_12

    .line 462
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 464
    :cond_12
    if-eqz p2, :cond_21

    .line 465
    const-string p2, "Complete history:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_2b

    .line 468
    :cond_21
    const-string p2, "History since boot:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 471
    :goto_2b
    return-void
.end method

.method public forcePersistLocked(J)V
    .registers 7

    .line 296
    const-string/jumbo v0, "problem persisting pending stats"

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v3, "missing FileRotator"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 300
    :try_start_14
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 301
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 302
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_35

    .line 306
    :catch_26
    move-exception p1

    .line 307
    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_35

    .line 303
    :catch_2e
    move-exception p1

    .line 304
    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 311
    :cond_35
    :goto_35
    return-void
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 170
    :goto_13
    if-nez v0, :cond_27

    .line 171
    const-wide/high16 v0, -0x8000000000000000L

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    .line 174
    :cond_27
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .registers 7

    .line 178
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 180
    :goto_13
    if-nez v0, :cond_19

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 183
    :cond_19
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .registers 10

    .line 153
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 153
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object p1

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p1

    .line 153
    return-object p1
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 426
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 427
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    .line 429
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 430
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 432
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 435
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v5, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v5, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 436
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 438
    :cond_33
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 446
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 447
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    .line 449
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 450
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 452
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 455
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v5, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v5, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 456
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 458
    :cond_35
    return-void
.end method

.method public maybePersistLocked(J)V
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    .line 285
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_1c

    .line 288
    :cond_17
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 290
    :goto_1c
    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 212
    if-nez v1, :cond_b

    return-void

    .line 215
    :cond_b
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v3, :cond_12

    .line 216
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 217
    return-void

    .line 220
    :cond_12
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_1f

    :cond_1e
    move-object v3, v4

    .line 222
    :goto_1f
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-static {v1, v5, v6, v7}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v15

    .line 224
    nop

    .line 225
    invoke-virtual {v15}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v5

    sub-long v26, p3, v5

    .line 227
    nop

    .line 228
    const/16 v28, 0x0

    move-object v5, v4

    move/from16 v4, v28

    :goto_36
    invoke-virtual {v15}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v4, v6, :cond_fd

    .line 229
    invoke-virtual {v15, v4, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 233
    invoke-virtual {v14}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 234
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    if-eqz v5, :cond_4f

    .line 235
    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-interface {v5, v15, v4, v6}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 237
    :cond_4f
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 238
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 239
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 240
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 241
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/net/NetworkStats$Entry;->operations:J

    .line 244
    :cond_79
    iget-object v5, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v12, p2

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/net/NetworkIdentitySet;

    .line 245
    if-nez v6, :cond_8f

    .line 246
    iget-object v5, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v16, v14

    goto/16 :goto_f7

    .line 251
    :cond_8f
    invoke-virtual {v14}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_99

    move-object/from16 v16, v14

    goto/16 :goto_f7

    .line 254
    :cond_99
    iget v5, v14, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v5, :cond_9f

    const/4 v5, 0x1

    goto :goto_a1

    :cond_9f
    move/from16 v5, v28

    :goto_a1
    iget-boolean v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v5, v7, :cond_f5

    .line 255
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_c2

    .line 256
    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-wide/from16 v21, v26

    move-wide/from16 v23, p3

    move-object/from16 v25, v14

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 260
    :cond_c2
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_df

    .line 261
    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-wide/from16 v21, v26

    move-wide/from16 v23, p3

    move-object/from16 v25, v14

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 265
    :cond_df
    if-eqz v3, :cond_f2

    .line 266
    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v5, v3

    move-wide/from16 v10, v26

    move-wide/from16 v12, p3

    move-object/from16 v16, v14

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_f7

    .line 265
    :cond_f2
    move-object/from16 v16, v14

    goto :goto_f7

    .line 254
    :cond_f5
    move-object/from16 v16, v14

    .line 228
    :goto_f7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_36

    .line 271
    :cond_fd
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 276
    return-void
.end method

.method public removeUidsLocked([I)V
    .registers 8

    .line 318
    const-string/jumbo v0, "problem removing UIDs "

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v2, :cond_49

    .line 321
    :try_start_9
    new-instance v3, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_49

    .line 325
    :catch_14
    move-exception v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_49

    .line 322
    :catch_2f
    move-exception v2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 332
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_50

    .line 333
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 335
    :cond_50
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_57

    .line 336
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 340
    :cond_57
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v0, :cond_5e

    .line 341
    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->removeUids([I)V

    .line 344
    :cond_5e
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    .line 345
    :goto_6a
    if-eqz v0, :cond_6f

    .line 346
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 348
    :cond_6f
    return-void
.end method

.method public resetLocked()V
    .registers 2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 141
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_a

    .line 142
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_11

    .line 145
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 150
    :cond_18
    return-void
.end method

.method public setPersistThreshold(J)V
    .registers 9

    .line 135
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 137
    return-void
.end method

.method public writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 474
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 475
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_14

    .line 476
    const-wide v1, 0x10300000001L

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 478
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 479
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 480
    return-void
.end method
