.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 47
    const-string v1, "JobScheduler.ContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 61
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 65
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 71
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 449
    const-wide v5, 0x10b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 451
    const/4 v8, 0x0

    :goto_14
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    if-ge v8, v9, :cond_4f

    .line 452
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 453
    invoke-interface {v2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_35

    .line 454
    goto :goto_4c

    .line 456
    :cond_35
    const-wide v14, 0x20b00000001L

    .line 457
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 458
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 460
    nop

    .line 461
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    .line 460
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 462
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 451
    :goto_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 465
    :cond_4f
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 466
    const/4 v9, 0x0

    :goto_56
    if-ge v9, v8, :cond_1d5

    .line 467
    nop

    .line 468
    const-wide v14, 0x20b00000002L

    move/from16 p3, v8

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 469
    iget-object v10, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 471
    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 473
    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 475
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 476
    const/4 v12, 0x0

    :goto_7f
    if-ge v12, v11, :cond_1ba

    .line 477
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 478
    iget-object v14, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 479
    nop

    .line 480
    const/4 v15, 0x0

    :goto_8f
    if-ge v15, v14, :cond_a9

    .line 481
    iget-object v0, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 482
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 483
    nop

    .line 484
    const/4 v0, 0x1

    goto :goto_aa

    .line 480
    :cond_a4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_8f

    :cond_a9
    const/4 v0, 0x0

    .line 487
    :goto_aa
    if-nez v0, :cond_b6

    .line 488
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_1a5

    .line 490
    :cond_b6
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 493
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 494
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 495
    if-eqz v6, :cond_db

    .line 496
    const-wide v2, 0x10900000001L

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 498
    :cond_db
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v0

    const-wide v2, 0x10500000002L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 500
    const/4 v0, 0x0

    :goto_e8
    if-ge v0, v14, :cond_19e

    .line 501
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 502
    iget-object v6, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 504
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v20, v10

    move/from16 v21, v11

    const-wide v10, 0x10b00000001L

    invoke-virtual {v15, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 505
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 506
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    .line 505
    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 508
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v15, :cond_124

    .line 509
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 510
    move-object/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_192

    .line 512
    :cond_124
    iget-boolean v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v15, :cond_149

    .line 513
    const-wide v10, 0x10300000003L

    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 514
    move-object/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v13

    .line 513
    invoke-virtual {v1, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 515
    const-wide v10, 0x10300000004L

    iget-object v13, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 516
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v13

    .line 515
    invoke-virtual {v1, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_14d

    .line 512
    :cond_149
    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 518
    :goto_14d
    const/4 v10, 0x0

    :goto_14e
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_169

    .line 519
    const-wide v13, 0x20900000005L

    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 520
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 518
    add-int/lit8 v10, v10, 0x1

    goto :goto_14e

    .line 522
    :cond_169
    iget-object v10, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v10, :cond_18f

    .line 523
    const/4 v10, 0x0

    :goto_16e
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_18f

    .line 524
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 525
    if-eqz v11, :cond_18c

    .line 526
    const-wide v13, 0x20900000006L

    .line 527
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 526
    invoke-virtual {v1, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 523
    :cond_18c
    add-int/lit8 v10, v10, 0x1

    goto :goto_16e

    .line 532
    :cond_18f
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 500
    :goto_192
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v13, v22

    move/from16 v14, v23

    goto/16 :goto_e8

    .line 535
    :cond_19e
    move-object/from16 v20, v10

    move/from16 v21, v11

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 476
    :goto_1a5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-wide/from16 v5, v16

    move-wide/from16 v3, v18

    move-object/from16 v10, v20

    move/from16 v11, v21

    const-wide v14, 0x20b00000002L

    goto/16 :goto_7f

    .line 538
    :cond_1ba
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 466
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v2, p4

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    goto/16 :goto_56

    .line 541
    :cond_1d5
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 542
    move-wide/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 543
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    :goto_7
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const-string v6, " from "

    const-string v7, "#"

    if-ge v4, v5, :cond_38

    .line 359
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 360
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 361
    goto :goto_35

    .line 363
    :cond_22
    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 365
    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 358
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 369
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 371
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 372
    if-lez v4, :cond_17c

    .line 373
    const-string v5, "Observers:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_179

    .line 376
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 377
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 379
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 380
    const/4 v10, 0x0

    :goto_61
    if-ge v10, v9, :cond_173

    .line 381
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 382
    iget-object v12, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 383
    nop

    .line 384
    const/4 v13, 0x0

    :goto_71
    if-ge v13, v12, :cond_89

    .line 385
    iget-object v14, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 386
    iget-object v14, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v14}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_86

    .line 387
    nop

    .line 388
    const/4 v13, 0x1

    goto :goto_8a

    .line 384
    :cond_86
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    :cond_89
    const/4 v13, 0x0

    .line 391
    :goto_8a
    if-nez v13, :cond_90

    .line 392
    move/from16 v16, v4

    goto/16 :goto_16d

    .line 394
    :cond_90
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 395
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 396
    const-string v14, " 0x"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    const-string v13, " ("

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 400
    const-string v13, "):"

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 402
    const-string v13, "Jobs:"

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 404
    const/4 v13, 0x0

    :goto_ca
    if-ge v13, v12, :cond_165

    .line 405
    iget-object v14, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 406
    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v15, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 408
    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    invoke-static {v1, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 410
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v15, :cond_15a

    .line 411
    const-string v15, ":"

    invoke-virtual {v1, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    iget-boolean v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v15, :cond_11a

    .line 414
    const-string v15, "Trigger pending: update="

    invoke-virtual {v1, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 416
    move/from16 v16, v4

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    .line 415
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 417
    const-string v3, ", max="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 419
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v3

    .line 418
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_11c

    .line 413
    :cond_11a
    move/from16 v16, v4

    .line 422
    :goto_11c
    const-string v3, "Changed Authorities:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const/4 v3, 0x0

    :goto_122
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_138

    .line 424
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_122

    .line 426
    :cond_138
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v3, :cond_156

    .line 427
    const-string v3, "          Changed URIs:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const/4 v3, 0x0

    :goto_142
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_156

    .line 429
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    .line 432
    :cond_156
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_15f

    .line 434
    :cond_15a
    move/from16 v16, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 404
    :goto_15f
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto/16 :goto_ca

    .line 437
    :cond_165
    move/from16 v16, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 380
    :goto_16d
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v16

    goto/16 :goto_61

    .line 375
    :cond_173
    move/from16 v16, v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4c

    .line 441
    :cond_179
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 443
    :cond_17c
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 76
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a5

    .line 77
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_12

    .line 78
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 80
    :cond_12
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking content-trigger job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler.ContentObserver"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2c
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 85
    const/4 v0, 0x0

    .line 88
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    .line 89
    move v0, v3

    .line 93
    :cond_3e
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_9e

    .line 94
    nop

    .line 95
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v0, :cond_52

    .line 96
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 99
    :cond_52
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_58

    .line 102
    :cond_6c
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_99

    .line 103
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v0, :cond_7f

    .line 104
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 106
    :cond_7f
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 107
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_85

    .line 110
    :cond_99
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 111
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    move v0, v3

    .line 113
    :cond_9e
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 114
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    .line 117
    :cond_a5
    if-eqz p2, :cond_b2

    iget-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p1, :cond_b2

    .line 119
    iget-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 120
    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 122
    :cond_b2
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 6

    .line 140
    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p3

    if-eqz p3, :cond_67

    .line 141
    iget-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p3, :cond_4d

    .line 143
    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 144
    const/4 p3, 0x0

    if-eqz p2, :cond_46

    .line 145
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_4d

    .line 152
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_2d

    .line 153
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 155
    :cond_2d
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 157
    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 159
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object p3, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 160
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object p3, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_4d

    .line 168
    :cond_46
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 169
    iput-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 172
    :cond_4d
    :goto_4d
    sget-boolean p2, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz p2, :cond_67

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No longer tracking job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.ContentObserver"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_67
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 126
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 127
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_1f

    .line 128
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 129
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 131
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 132
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v1, p1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 135
    :cond_1f
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 180
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 185
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 186
    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 188
    :cond_14
    return-void
.end method
