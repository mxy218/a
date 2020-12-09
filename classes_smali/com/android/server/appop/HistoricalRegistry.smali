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

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 3

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
    .registers 12

    .line 588
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_58

    .line 589
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 590
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
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 598
    cmp-long v0, v3, v1

    if-lez v0, :cond_22

    .line 602
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p1

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

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 607
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p1

    .line 610
    :cond_37
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 611
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 613
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 614
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 615
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 618
    :cond_58
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 619
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 623
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p1
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

    .line 670
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 671
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 670
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

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
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v2

    .line 638
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 642
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
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_34

    .line 651
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 652
    if-lez v2, :cond_31

    .line 653
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 654
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 650
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 657
    :cond_34
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v1, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 658
    monitor-exit v0

    .line 659
    return-void

    .line 658
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 675
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 676
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3a

    .line 677
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 678
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1c

    .line 679
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 680
    :cond_1c
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_37

    .line 681
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    .line 682
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 683
    invoke-static {v1, v2, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 676
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 686
    :cond_3a
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .registers 8

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

    .line 662
    sget-object v0, Lcom/android/server/appop/-$$Lambda$HistoricalRegistry$dJrtb4M71TzV6sx9vPEImQG_akU;->INSTANCE:Lcom/android/server/appop/-$$Lambda$HistoricalRegistry$dJrtb4M71TzV6sx9vPEImQG_akU;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 664
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 665
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .registers 18

    .line 232
    const-string v0, "appop_history_parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez v1, :cond_b

    .line 235
    return-void

    .line 237
    :cond_b
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_96

    aget-object v8, v0, v4

    .line 242
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 243
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_93

    .line 244
    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 245
    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0xb56339a

    const/4 v15, 0x1

    if-eq v13, v14, :cond_59

    const v14, 0x3339a3

    if-eq v13, v14, :cond_4f

    const v14, 0xea4149c

    if-eq v13, v14, :cond_45

    :cond_44
    goto :goto_62

    :cond_45
    const-string v13, "baseIntervalMillis"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    move v12, v15

    goto :goto_62

    :cond_4f
    const-string v13, "mode"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    move v12, v3

    goto :goto_62

    :cond_59
    const-string v13, "intervalMultiplier"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    move v12, v11

    :goto_62
    if-eqz v12, :cond_8d

    if-eq v12, v15, :cond_86

    if-eq v12, v11, :cond_7f

    .line 256
    sget-object v9, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 253
    :cond_7f
    aget-object v7, v9, v15

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 254
    goto :goto_93

    .line 250
    :cond_86
    aget-object v6, v9, v15

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 251
    goto :goto_93

    .line 247
    :cond_8d
    aget-object v5, v9, v15

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 241
    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 261
    :cond_96
    if-eqz v5, :cond_b0

    if-eqz v6, :cond_b0

    if-eqz v7, :cond_b0

    .line 264
    :try_start_9c
    invoke-static {v5}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v9

    .line 265
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 266
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    int-to-long v12, v0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_ae} :catch_af

    .line 268
    return-void

    .line 269
    :catch_af
    move-exception v0

    .line 271
    :cond_b0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value forappop_history_parameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resetting!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 7

    .line 1757
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    sget-boolean p0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz p0, :cond_8e

    .line 1760
    :try_start_9
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "appops"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wtf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1763
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3e} :catch_8d

    .line 1764
    const/16 p0, 0xa

    if-eqz p1, :cond_4d

    .line 1765
    :try_start_42
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1767
    :cond_4d
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1768
    if-eqz p2, :cond_77

    .line 1769
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\nfiles: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_7c

    .line 1771
    :cond_77
    const-string p0, "\nfiles: none"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_7c
    .catchall {:try_start_42 .. :try_end_7c} :catchall_80

    .line 1773
    :goto_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8d

    goto :goto_8c

    .line 1763
    :catchall_80
    move-exception p0

    :try_start_81
    throw p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 1773
    :catchall_82
    move-exception p1

    :try_start_83
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception p2

    :try_start_88
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8b
    throw p1
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_8d

    .line 1777
    :cond_8c
    :goto_8c
    goto :goto_8e

    .line 1775
    :catch_8d
    move-exception p0

    .line 1779
    :cond_8e
    :goto_8e
    return-void
.end method


# virtual methods
.method addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 516
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 524
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 526
    return-void

    .line 524
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
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

    :try_start_1e
    throw v2

    .line 574
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .registers 5

    .line 543
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 544
    :try_start_3
    iget-object p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 545
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_16

    .line 546
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_19

    :try_start_14
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1c

    return-void

    .line 550
    :cond_16
    :try_start_16
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    return-void

    .line 561
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0

    .line 562
    :catchall_1c
    move-exception p2

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1c

    throw p2
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V
    .registers 19

    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    iget-object v9, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v9

    .line 278
    :try_start_6
    iget-object v10, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_91

    .line 279
    :try_start_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const-string v2, "History:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v2, "  mode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v12, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v12

    move-object v2, p0

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 291
    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 293
    invoke-static {v3, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 294
    invoke-virtual {v3, v12}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 297
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v10
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_8e

    :try_start_5c
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_91

    return-void

    .line 301
    :cond_5e
    :try_start_5e
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_86

    .line 304
    iget-wide v4, v0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v4, v1

    iget-wide v6, v0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v4, v6

    .line 306
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    nop

    :goto_71
    if-ge v11, v0, :cond_85

    .line 308
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 309
    invoke-virtual {v6, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 310
    invoke-static {v6, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 311
    invoke-virtual {v6, v12}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 307
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 313
    :cond_85
    goto :goto_8b

    .line 314
    :cond_86
    const-string v0, "  Empty"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :goto_8b
    monitor-exit v10
    :try_end_8c
    .catchall {:try_start_5e .. :try_end_8c} :catchall_8e

    .line 317
    :try_start_8c
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_91

    .line 318
    return-void

    .line 316
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v10
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v0

    .line 317
    :catchall_91
    move-exception v0

    monitor-exit v9
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_91

    throw v0
.end method

.method getHistoricalOps(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V
    .registers 37

    .line 349
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 350
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, p6, v6

    if-nez v6, :cond_15

    .line 351
    move-wide v6, v4

    goto :goto_17

    .line 350
    :cond_15
    move-wide/from16 v6, p6

    .line 356
    :goto_17
    sub-long v8, v4, v6

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 357
    sub-long v12, v4, v1

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 358
    new-instance v13, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v13, v8, v9, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 361
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v12

    .line 366
    :try_start_2d
    iget-object v10, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_e4

    .line 367
    :try_start_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v11

    if-nez v11, :cond_48

    .line 368
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 370
    monitor-exit v10
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_dd

    :try_start_46
    monitor-exit v12
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_e4

    return-void

    .line 373
    :cond_48
    :try_start_48
    invoke-direct {v0, v4, v5}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v11

    .line 374
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v16

    cmp-long v16, v8, v16

    if-gez v16, :cond_7e

    .line 375
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v16

    cmp-long v16, v14, v16

    if-lez v16, :cond_78

    .line 377
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v3, v11}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_dd

    .line 378
    move-object/from16 v26, v12

    move-object v12, v3

    move-object v1, v13

    move/from16 v13, p1

    move-wide/from16 v20, v14

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-wide/from16 v16, v8

    move-wide/from16 v18, v20

    :try_start_71
    invoke-virtual/range {v12 .. v19}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;[Ljava/lang/String;JJ)V

    .line 380
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_83

    .line 375
    :cond_78
    move-object/from16 v26, v12

    move-object v1, v13

    move-wide/from16 v20, v14

    goto :goto_83

    .line 374
    :cond_7e
    move-object/from16 v26, v12

    move-object v1, v13

    move-wide/from16 v20, v14

    .line 382
    :goto_83
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 384
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11

    cmp-long v3, v20, v11

    if-lez v3, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    .line 385
    :goto_9a
    monitor-exit v10
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_e2

    .line 388
    if-eqz v3, :cond_c6

    .line 390
    :try_start_9d
    invoke-direct {v0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 392
    iget-wide v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v4, v2

    iget-wide v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v4, v2

    .line 394
    sub-long/2addr v8, v4

    const-wide/16 v2, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 396
    sub-long v14, v20, v4

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 398
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-wide/from16 v21, v8

    move/from16 v25, p8

    invoke-static/range {v16 .. v25}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V

    .line 403
    :cond_c6
    move-object v2, v1

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    const-string v1, "historical_ops"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 409
    monitor-exit v26
    :try_end_dc
    .catchall {:try_start_9d .. :try_end_dc} :catchall_e9

    .line 410
    return-void

    .line 385
    :catchall_dd
    move-exception v0

    move-object/from16 v26, v12

    :goto_e0
    :try_start_e0
    monitor-exit v10
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e2

    :try_start_e1
    throw v0

    :catchall_e2
    move-exception v0

    goto :goto_e0

    .line 409
    :catchall_e4
    move-exception v0

    move-object/from16 v26, v12

    :goto_e7
    monitor-exit v26
    :try_end_e8
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_e9

    throw v0

    :catchall_e9
    move-exception v0

    goto :goto_e7
.end method

.method getHistoricalOpsFromDiskRaw(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V
    .registers 25

    .line 329
    move-object v0, p0

    move-object/from16 v1, p9

    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_6
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_4f

    .line 331
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_21

    .line 332
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Interaction before persistence initialized"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 334
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_4c

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_4f

    return-void

    .line 336
    :cond_21
    :try_start_21
    new-instance v14, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-direct {v14, v9, v10, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 337
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object v5, v14

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move/from16 v13, p8

    invoke-static/range {v4 .. v13}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V

    .line 339
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    const-string v4, "historical_ops"

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 342
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_4c

    .line 343
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4f

    .line 344
    return-void

    .line 342
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0

    .line 343
    :catchall_4f
    move-exception v0

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4f

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
    .registers 8

    .line 442
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter p1

    .line 451
    :try_start_3
    monitor-exit p1

    .line 452
    return-void

    .line 451
    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p2
.end method

.method incrementOpAccessedCount(IILjava/lang/String;II)V
    .registers 6

    .line 414
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter p1

    .line 423
    :try_start_3
    monitor-exit p1

    .line 424
    return-void

    .line 423
    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p2
.end method

.method incrementOpRejected(IILjava/lang/String;II)V
    .registers 6

    .line 428
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter p1

    .line 437
    :try_start_3
    monitor-exit p1

    .line 438
    return-void

    .line 437
    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p2
.end method

.method offsetHistory(J)V
    .registers 9

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
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Interaction before persistence initialized"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 497
    if-eqz v2, :cond_42

    .line 498
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 499
    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_34

    .line 500
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 501
    invoke-virtual {v5, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 503
    :cond_34
    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-gez p1, :cond_3d

    .line 504
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 506
    :cond_3d
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {p1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 508
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
    move-exception p1

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p1

    .line 509
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw p1
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

    .line 486
    return-void
.end method

.method systemReady(Landroid/content/ContentResolver;)V
    .registers 5

    .line 195
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
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
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 207
    :try_start_19
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    .line 223
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1f

    .line 224
    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_22

    .line 225
    return-void

    .line 223
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v1

    .line 224
    :catchall_22
    move-exception v0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw v0
.end method
