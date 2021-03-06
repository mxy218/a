.class final Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;,
        Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;,
        Lcom/android/server/appop/HistoricalRegistry$Persistence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESSION_STEP:J = 0xaL

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final KEEP_WTF_LOG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_WRITE_PENDING_HISTORY:I = 0x1

.field private static final PARAMETER_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private mBaseSnapshotInterval:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private final mInMemoryLock:Ljava/lang/Object;

.field private mIntervalCompressionMultiplier:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private final mMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private mNextPersistDueTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private final mOnDiskLock:Ljava/lang/Object;

.field private mPendingHistoryOffsetMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field private mPendingWrites:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOnDiskLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 122
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 124
    const-class v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 144
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "lock"  # Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 163
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 171
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 191
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/HistoricalRegistry;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/String;
    .param p1, "x1"  # Ljava/lang/Throwable;
    .param p2, "x2"  # Ljava/io/File;

    .line 120
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method private clearHistoryOnDiskDLocked()V
    .registers 4

    .line 578
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 582
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 583
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    .line 584
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 585
    return-void

    .line 583
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 14
    .param p1, "now"  # J

    .line 588
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_58

    .line 589
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 590
    .local v3, "remainingTimeMillis":J
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_13

    .line 594
    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 596
    :cond_13
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v3

    .line 597
    .local v5, "elapsedTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 598
    cmp-long v0, v3, v1

    if-lez v0, :cond_22

    .line 602
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 604
    :cond_22
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 605
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 606
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 607
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 610
    :cond_37
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 611
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 613
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 614
    .local v7, "overdueTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 615
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 618
    .end local v3  # "remainingTimeMillis":J
    .end local v5  # "elapsedTimeMillis":J
    .end local v7  # "overdueTimeMillis":J
    :cond_58
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 619
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 623
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0
.end method

.method private isPersistenceInitializedMLocked()Z
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$dJrtb4M71TzV6sx9vPEImQG_akU(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    return-void
.end method

.method private static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .registers 7
    .param p0, "ops"  # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "nowMillis"  # J

    .line 670
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 671
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 670
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 672
    return-void
.end method

.method private persistPendingHistory()V
    .registers 8

    .line 628
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2a

    .line 630
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 631
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 632
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    .line 633
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 634
    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 636
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_27

    .line 637
    :try_start_22
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 638
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 639
    return-void

    .line 636
    .end local v2  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_29
    throw v2

    .line 638
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 645
    monitor-exit v0

    return-void

    .line 647
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 650
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_34

    .line 651
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 652
    .local v3, "current":Landroid/app/AppOpsManager$HistoricalOps;
    if-lez v2, :cond_31

    .line 653
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 654
    .local v4, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 650
    .end local v3  # "current":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4  # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 657
    .end local v2  # "i":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 658
    .end local v1  # "opCount":I
    monitor-exit v0

    .line 659
    return-void

    .line 658
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 675
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 676
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3a

    .line 677
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 678
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1c

    .line 679
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 680
    :cond_1c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_37

    .line 681
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 682
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 683
    .local v3, "filterScale":D
    invoke-static {v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 676
    .end local v2  # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3  # "filterScale":D
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 686
    .end local v1  # "i":I
    :cond_3a
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .registers 8
    .param p1, "offsetMillis"  # J

    .line 529
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 531
    return-void
.end method

.method private schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 4
    .param p1, "ops"  # Landroid/app/AppOpsManager$HistoricalOps;

    .line 662
    sget-object v0, Lcom/android/server/appop/-$$Lambda$HistoricalRegistry$dJrtb4M71TzV6sx9vPEImQG_akU;->INSTANCE:Lcom/android/server/appop/-$$Lambda$HistoricalRegistry$dJrtb4M71TzV6sx9vPEImQG_akU;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 664
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 665
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .registers 18
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 232
    const-string v0, "appop_history_parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_b

    .line 235
    return-void

    .line 237
    :cond_b
    const/4 v0, 0x0

    .line 238
    .local v0, "modeValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 239
    .local v3, "baseSnapshotIntervalValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 240
    .local v4, "intervalMultiplierValue":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "parameters":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v7

    .end local v0  # "modeValue":Ljava/lang/String;
    .local v3, "modeValue":Ljava/lang/String;
    .local v4, "baseSnapshotIntervalValue":Ljava/lang/String;
    .local v8, "intervalMultiplierValue":Ljava/lang/String;
    :goto_1a
    if-ge v0, v6, :cond_99

    aget-object v9, v5, v0

    .line 242
    .local v9, "parameter":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, "parts":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_95

    .line 244
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 245
    .local v11, "key":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0xb56339a

    const/4 v7, 0x1

    if-eq v14, v15, :cond_59

    const v15, 0x3339a3

    if-eq v14, v15, :cond_4e

    const v15, 0xea4149c

    if-eq v14, v15, :cond_44

    :cond_43
    goto :goto_63

    :cond_44
    const-string v14, "baseIntervalMillis"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    move v13, v7

    goto :goto_63

    :cond_4e
    const-string/jumbo v14, "mode"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    const/4 v13, 0x0

    goto :goto_63

    :cond_59
    const-string/jumbo v14, "intervalMultiplier"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    move v13, v12

    :goto_63
    if-eqz v13, :cond_8f

    if-eq v13, v7, :cond_88

    if-eq v13, v12, :cond_80

    .line 256
    sget-object v7, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 253
    :cond_80
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 254
    .end local v8  # "intervalMultiplierValue":Ljava/lang/String;
    .local v7, "intervalMultiplierValue":Ljava/lang/String;
    move-object v8, v7

    goto :goto_95

    .line 250
    .end local v7  # "intervalMultiplierValue":Ljava/lang/String;
    .restart local v8  # "intervalMultiplierValue":Ljava/lang/String;
    :cond_88
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 251
    goto :goto_95

    .line 247
    :cond_8f
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 241
    .end local v9  # "parameter":Ljava/lang/String;
    .end local v10  # "parts":[Ljava/lang/String;
    .end local v11  # "key":Ljava/lang/String;
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    goto :goto_1a

    .line 261
    :cond_99
    if-eqz v3, :cond_b3

    if-eqz v4, :cond_b3

    if-eqz v8, :cond_b3

    .line 264
    :try_start_9f
    invoke-static {v3}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v10

    .line 265
    .local v10, "mode":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 266
    .local v11, "baseSnapshotInterval":J
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "intervalCompressionMultiplier":I
    int-to-long v13, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_b1} :catch_b2

    .line 268
    return-void

    .line 269
    .end local v0  # "intervalCompressionMultiplier":I
    .end local v10  # "mode":I
    .end local v11  # "baseSnapshotInterval":J
    :catch_b2
    move-exception v0

    .line 271
    :cond_b3
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value forappop_history_parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resetting!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 8
    .param p0, "message"  # Ljava/lang/String;
    .param p1, "t"  # Ljava/lang/Throwable;
    .param p2, "storage"  # Ljava/io/File;

    .line 1757
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    sget-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz v0, :cond_8e

    .line 1760
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wtf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1763
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3e} :catch_8d

    .line 1764
    .local v1, "writer":Ljava/io/PrintWriter;
    const/16 v2, 0xa

    if-eqz p1, :cond_4d

    .line 1765
    :try_start_42
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1767
    :cond_4d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1768
    if-eqz p2, :cond_77

    .line 1769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nfiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_7c

    .line 1771
    :cond_77
    const-string v2, "\nfiles: none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_7c
    .catchall {:try_start_42 .. :try_end_7c} :catchall_80

    .line 1773
    :goto_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8d

    goto :goto_8c

    .line 1763
    :catchall_80
    move-exception v2

    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "writer":Ljava/io/PrintWriter;
    .end local p0  # "message":Ljava/lang/String;
    .end local p1  # "t":Ljava/lang/Throwable;
    .end local p2  # "storage":Ljava/io/File;
    :try_start_81
    throw v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 1773
    .restart local v0  # "file":Ljava/io/File;
    .restart local v1  # "writer":Ljava/io/PrintWriter;
    .restart local p0  # "message":Ljava/lang/String;
    .restart local p1  # "t":Ljava/lang/Throwable;
    .restart local p2  # "storage":Ljava/io/File;
    :catchall_82
    move-exception v3

    :try_start_83
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v4

    :try_start_88
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "message":Ljava/lang/String;
    .end local p1  # "t":Ljava/lang/Throwable;
    .end local p2  # "storage":Ljava/io/File;
    :goto_8b
    throw v3
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_8d

    .line 1777
    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "writer":Ljava/io/PrintWriter;
    .restart local p0  # "message":Ljava/lang/String;
    .restart local p1  # "t":Ljava/lang/Throwable;
    .restart local p2  # "storage":Ljava/io/File;
    :cond_8c
    :goto_8c
    goto :goto_8e

    .line 1775
    :catch_8d
    move-exception v0

    .line 1779
    :cond_8e
    :goto_8e
    return-void
.end method


# virtual methods
.method addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5
    .param p1, "ops"  # Landroid/app/AppOpsManager$HistoricalOps;

    .line 514
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 516
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v0

    return-void

    .line 520
    :cond_12
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 521
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 523
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 524
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 525
    invoke-direct {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 526
    return-void

    .line 524
    .end local v1  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method clearHistory()V
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    .line 568
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 569
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1c

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1f

    return-void

    .line 572
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 573
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1c

    .line 574
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    .line 575
    return-void

    .line 573
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_1e
    throw v2

    .line 574
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 545
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 546
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_19

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1c

    return-void

    .line 550
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    return-void

    .line 561
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "uid":I
    .end local p2  # "packageName":Ljava/lang/String;
    :try_start_1b
    throw v2

    .line 562
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "uid":I
    .restart local p2  # "packageName":Ljava/lang/String;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V
    .registers 21
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "filterUid"  # I
    .param p4, "filterPackage"  # Ljava/lang/String;
    .param p5, "filterOp"  # I

    .line 277
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v11, v8, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 278
    :try_start_8
    iget-object v12, v8, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_94

    .line 279
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 280
    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const-string v0, "History:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v0, "  mode="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V

    .line 288
    .local v0, "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 291
    .local v1, "nowMillis":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 293
    .local v3, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v3, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 294
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 297
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v12
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_91

    :try_start_5f
    monitor-exit v11
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_94

    return-void

    .line 301
    :cond_61
    :try_start_61
    iget-object v4, v8, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    .line 302
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v4, :cond_89

    .line 304
    iget-wide v5, v8, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v5, v1

    iget-wide v13, v8, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v13

    .line 306
    .local v5, "remainingToFillBatchMillis":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 307
    .local v7, "opCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_74
    if-ge v13, v7, :cond_88

    .line 308
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$HistoricalOps;

    .line 309
    .local v14, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v14, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 310
    invoke-static {v14, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 311
    invoke-virtual {v14, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 307
    .end local v14  # "op":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    .line 313
    .end local v5  # "remainingToFillBatchMillis":J
    .end local v7  # "opCount":I
    .end local v13  # "i":I
    :cond_88
    goto :goto_8e

    .line 314
    :cond_89
    const-string v5, "  Empty"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .end local v0  # "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    .end local v1  # "nowMillis":J
    .end local v3  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_8e
    monitor-exit v12
    :try_end_8f
    .catchall {:try_start_61 .. :try_end_8f} :catchall_91

    .line 317
    :try_start_8f
    monitor-exit v11
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_94

    .line 318
    return-void

    .line 316
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "prefix":Ljava/lang/String;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "filterUid":I
    .end local p4  # "filterPackage":Ljava/lang/String;
    .end local p5  # "filterOp":I
    :try_start_93
    throw v0

    .line 317
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "prefix":Ljava/lang/String;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "filterUid":I
    .restart local p4  # "filterPackage":Ljava/lang/String;
    .restart local p5  # "filterOp":I
    :catchall_94
    move-exception v0

    monitor-exit v11
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_94

    throw v0
.end method

.method getHistoricalOps(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V
    .registers 42
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "opNames"  # [Ljava/lang/String;
    .param p4, "beginTimeMillis"  # J
    .param p6, "endTimeMillis"  # J
    .param p8, "flags"  # I
    .param p9, "callback"  # Landroid/os/RemoteCallback;

    .line 349
    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    move-object/from16 v4, p9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 350
    .local v5, "currentTimeMillis":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, p6, v7

    if-nez v0, :cond_15

    .line 351
    move-wide v7, v5

    .end local p6  # "endTimeMillis":J
    .local v7, "endTimeMillis":J
    goto :goto_17

    .line 350
    .end local v7  # "endTimeMillis":J
    .restart local p6  # "endTimeMillis":J
    :cond_15
    move-wide/from16 v7, p6

    .line 356
    .end local p6  # "endTimeMillis":J
    .restart local v7  # "endTimeMillis":J
    :goto_17
    sub-long v9, v5, v7

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 357
    .local v9, "inMemoryAdjBeginTimeMillis":J
    sub-long v13, v5, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 358
    .local v14, "inMemoryAdjEndTimeMillis":J
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v9, v10, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v13, v0

    .line 361
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v11, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 366
    :try_start_2e
    iget-object v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_15c

    .line 367
    :try_start_31
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_150

    if-nez v0, :cond_6b

    .line 368
    :try_start_37
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_61

    move-object/from16 v16, v13

    .end local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_3b
    const-string v13, "Interaction before persistence initialized"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 370
    monitor-exit v12
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_56

    :try_start_49
    monitor-exit v11
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    return-void

    .line 409
    :catchall_4b
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-wide/from16 v26, v14

    move-object/from16 v6, v16

    goto/16 :goto_164

    .line 385
    :catchall_56
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-wide/from16 v26, v14

    move-object/from16 v6, v16

    goto/16 :goto_158

    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_61
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v13

    move-wide/from16 v26, v14

    .end local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto/16 :goto_158

    .line 373
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_6b
    move-object/from16 v16, v13

    .end local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_6d
    invoke-direct {v1, v5, v6}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 374
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v17
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_146

    cmp-long v13, v9, v17

    if-gez v13, :cond_bb

    .line 375
    :try_start_79
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v17

    cmp-long v13, v14, v17

    if-lez v13, :cond_a9

    .line 377
    new-instance v13, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v13, v0}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_ae

    .line 378
    .local v13, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-object/from16 v21, v13

    move-object/from16 v4, v16

    .end local v13  # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v21, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v26, v14

    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .local v26, "inMemoryAdjEndTimeMillis":J
    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-wide/from16 v17, v9

    move-wide/from16 v19, v26

    :try_start_96
    invoke-virtual/range {v13 .. v20}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;[Ljava/lang/String;JJ)V

    .line 380
    move-object/from16 v13, v21

    .end local v21  # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13  # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_9f

    goto :goto_bf

    .line 385
    .end local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13  # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_9f
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v4

    move-object/from16 v4, p9

    goto/16 :goto_158

    .line 375
    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14  # "inMemoryAdjEndTimeMillis":J
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_a9
    move-wide/from16 v26, v14

    move-object/from16 v4, v16

    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    goto :goto_bf

    .line 385
    .end local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v14  # "inMemoryAdjEndTimeMillis":J
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_ae
    move-exception v0

    move-wide/from16 v26, v14

    move-object/from16 v4, p9

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object/from16 v6, v16

    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    goto/16 :goto_158

    .line 374
    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14  # "inMemoryAdjEndTimeMillis":J
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_bb
    move-wide/from16 v26, v14

    move-object/from16 v4, v16

    .line 382
    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    :goto_bf
    :try_start_bf
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    .local v13, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    .line 384
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v14

    cmp-long v14, v26, v14

    if-lez v14, :cond_d5

    const/4 v14, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v14, 0x0

    .line 385
    .local v14, "collectOpsFromDisk":Z
    :goto_d6
    monitor-exit v12
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_13d

    .line 388
    if-eqz v14, :cond_11e

    .line 390
    :try_start_d9
    invoke-direct {v1, v13}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 392
    move-object v15, v13

    .end local v13  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v15, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-wide v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_115

    sub-long v12, v5, v12

    move-wide/from16 v28, v5

    .end local v5  # "currentTimeMillis":J
    .local v28, "currentTimeMillis":J
    :try_start_e3
    iget-wide v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_10e

    add-long/2addr v12, v5

    .line 394
    .local v12, "onDiskAndInMemoryOffsetMillis":J
    sub-long v5, v9, v12

    move-wide/from16 v30, v9

    const-wide/16 v9, 0x0

    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .local v30, "inMemoryAdjBeginTimeMillis":J
    :try_start_ec
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    .line 396
    .local v21, "onDiskAdjBeginTimeMillis":J
    sub-long v5, v26, v12

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 398
    .local v23, "onDiskAdjEndTimeMillis":J
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v25, p8

    invoke-static/range {v16 .. v25}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V
    :try_end_107
    .catchall {:try_start_ec .. :try_end_107} :catchall_108

    goto :goto_123

    .line 409
    .end local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12  # "onDiskAndInMemoryOffsetMillis":J
    .end local v14  # "collectOpsFromDisk":Z
    .end local v15  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v21  # "onDiskAdjBeginTimeMillis":J
    .end local v23  # "onDiskAdjEndTimeMillis":J
    :catchall_108
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p9

    goto/16 :goto_164

    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    :catchall_10e
    move-exception v0

    move-wide/from16 v30, v9

    move-object v6, v4

    move-object/from16 v4, p9

    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    goto :goto_164

    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v5  # "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    :catchall_115
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v4

    move-object/from16 v4, p9

    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    goto :goto_164

    .line 388
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v5  # "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    .restart local v13  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14  # "collectOpsFromDisk":Z
    :cond_11e
    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v15, v13

    .line 403
    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .end local v13  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v15  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    :goto_123
    :try_start_123
    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 406
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v5, "payload":Landroid/os/Bundle;
    const-string v6, "historical_ops"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_130
    .catchall {:try_start_123 .. :try_end_130} :catchall_138

    .line 408
    move-object v6, v4

    move-object/from16 v4, p9

    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v6, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_133
    invoke-virtual {v4, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 409
    .end local v0  # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5  # "payload":Landroid/os/Bundle;
    .end local v14  # "collectOpsFromDisk":Z
    .end local v15  # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    monitor-exit v11
    :try_end_137
    .catchall {:try_start_133 .. :try_end_137} :catchall_166

    .line 410
    return-void

    .line 409
    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_138
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p9

    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_164

    .line 385
    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    :catchall_13d
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v4

    move-object/from16 v4, p9

    .end local v4  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    goto :goto_158

    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v5  # "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    .local v14, "inMemoryAdjEndTimeMillis":J
    .restart local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_146
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-wide/from16 v26, v14

    move-object/from16 v6, v16

    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .end local v16  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    goto :goto_158

    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v5  # "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14  # "inMemoryAdjEndTimeMillis":J
    :catchall_150
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v13

    move-wide/from16 v26, v14

    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .end local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    :goto_158
    :try_start_158
    monitor-exit v12
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_15a

    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7  # "endTimeMillis":J
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "uid":I
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "opNames":[Ljava/lang/String;
    .end local p4  # "beginTimeMillis":J
    .end local p8  # "flags":I
    .end local p9  # "callback":Landroid/os/RemoteCallback;
    :try_start_159
    throw v0

    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v7  # "endTimeMillis":J
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "uid":I
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "opNames":[Ljava/lang/String;
    .restart local p4  # "beginTimeMillis":J
    .restart local p8  # "flags":I
    .restart local p9  # "callback":Landroid/os/RemoteCallback;
    :catchall_15a
    move-exception v0

    goto :goto_158

    .line 409
    .end local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v26  # "inMemoryAdjEndTimeMillis":J
    .end local v28  # "currentTimeMillis":J
    .end local v30  # "inMemoryAdjBeginTimeMillis":J
    .restart local v5  # "currentTimeMillis":J
    .restart local v9  # "inMemoryAdjBeginTimeMillis":J
    .restart local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14  # "inMemoryAdjEndTimeMillis":J
    :catchall_15c
    move-exception v0

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object v6, v13

    move-wide/from16 v26, v14

    .end local v5  # "currentTimeMillis":J
    .end local v9  # "inMemoryAdjBeginTimeMillis":J
    .end local v13  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14  # "inMemoryAdjEndTimeMillis":J
    .restart local v6  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v26  # "inMemoryAdjEndTimeMillis":J
    .restart local v28  # "currentTimeMillis":J
    .restart local v30  # "inMemoryAdjBeginTimeMillis":J
    :goto_164
    monitor-exit v11
    :try_end_165
    .catchall {:try_start_159 .. :try_end_165} :catchall_166

    throw v0

    :catchall_166
    move-exception v0

    goto :goto_164
.end method

.method getHistoricalOpsFromDiskRaw(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V
    .registers 26
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "opNames"  # [Ljava/lang/String;
    .param p4, "beginTimeMillis"  # J
    .param p6, "endTimeMillis"  # J
    .param p8, "flags"  # I
    .param p9, "callback"  # Landroid/os/RemoteCallback;

    .line 329
    move-object/from16 v1, p0

    move-object/from16 v2, p9

    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_7
    iget-object v4, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_50

    .line 331
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 332
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 334
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_4d

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_50

    return-void

    .line 336
    :cond_22
    :try_start_22
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v14, p4

    move-wide/from16 v12, p6

    invoke-direct {v0, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 337
    .local v0, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    invoke-static/range {v5 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V

    .line 339
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v5, "payload":Landroid/os/Bundle;
    const-string v6, "historical_ops"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 342
    .end local v0  # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5  # "payload":Landroid/os/Bundle;
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4d

    .line 343
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_50

    .line 344
    return-void

    .line 342
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "uid":I
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "opNames":[Ljava/lang/String;
    .end local p4  # "beginTimeMillis":J
    .end local p6  # "endTimeMillis":J
    .end local p8  # "flags":I
    .end local p9  # "callback":Landroid/os/RemoteCallback;
    :try_start_4f
    throw v0

    .line 343
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "uid":I
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "opNames":[Ljava/lang/String;
    .restart local p4  # "beginTimeMillis":J
    .restart local p6  # "endTimeMillis":J
    .restart local p8  # "flags":I
    .restart local p9  # "callback":Landroid/os/RemoteCallback;
    :catchall_50
    move-exception v0

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v0
.end method

.method getMode()I
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    const/4 v1, 0x0

    :try_start_4
    monitor-exit v0

    return v1

    .line 323
    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method increaseOpAccessDuration(IILjava/lang/String;IIJ)V
    .registers 10
    .param p1, "op"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "uidState"  # I
    .param p5, "flags"  # I
    .param p6, "increment"  # J

    .line 442
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method incrementOpAccessedCount(IILjava/lang/String;II)V
    .registers 8
    .param p1, "op"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "uidState"  # I
    .param p5, "flags"  # I

    .line 414
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method incrementOpRejected(IILjava/lang/String;II)V
    .registers 8
    .param p1, "op"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "uidState"  # I
    .param p5, "flags"  # I

    .line 428
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method offsetHistory(J)V
    .registers 9
    .param p1, "offsetMillis"  # J

    .line 489
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    .line 491
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 492
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_45

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_48

    return-void

    .line 495
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 497
    if-eqz v2, :cond_42

    .line 498
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 499
    .local v3, "historySize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v3, :cond_34

    .line 500
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 501
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v5, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 499
    .end local v5  # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 503
    .end local v4  # "i":I
    :cond_34
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_3d

    .line 504
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 506
    :cond_3d
    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 508
    .end local v2  # "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3  # "historySize":I
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_45

    .line 509
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    .line 510
    return-void

    .line 508
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "offsetMillis":J
    :try_start_47
    throw v2

    .line 509
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "offsetMillis":J
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method resetHistoryParameters()V
    .registers 9

    .line 534
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 535
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 538
    :cond_e
    const/4 v3, 0x1

    sget-wide v4, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 540
    return-void
.end method

.method setHistoryParameters(IJJ)V
    .registers 6
    .param p1, "mode"  # I
    .param p2, "baseSnapshotInterval"  # J
    .param p4, "intervalCompressionMultiplier"  # J

    .line 486
    return-void
.end method

.method systemReady(Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 195
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 197
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_19
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    .line 223
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1f

    .line 224
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_22

    .line 225
    return-void

    .line 223
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .end local v0  # "uri":Landroid/net/Uri;
    .end local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1  # "resolver":Landroid/content/ContentResolver;
    :try_start_21
    throw v3

    .line 224
    .restart local v0  # "uri":Landroid/net/Uri;
    .restart local p0  # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1  # "resolver":Landroid/content/ContentResolver;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw v2
.end method
