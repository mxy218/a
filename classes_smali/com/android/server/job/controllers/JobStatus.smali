.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = -0x6bfffff1

.field static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field static final CONSTRAINT_DEADLINE:I = 0x40000000

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field static final CONSTRAINT_IDLE:I = 0x4

.field static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field static final DEBUG:Z

.field static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x2

.field public static final OVERRIDE_SOFT:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7ffffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x3afffff4

.field private static final STATS_LOG_ENABLED:Z = false

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
.field private final baseHeartbeat:J

.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private mInternalFlags:I

.field private mLastFailedRunTime:J

.field private mLastSuccessfulRunTime:J

.field private mOriginalLatestRunTimeElapsedMillis:J

.field private mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyDeadlineSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyWithinQuota:Z

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field private final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field private standbyBucket:I

.field final tag:Ljava/lang/String;

.field final targetSdkVersion:I

.field private totalNetworkBytes:J

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V
    .registers 35

    .line 368
    move-object v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 194
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 195
    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 267
    const/4 v11, 0x1

    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 270
    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 308
    const-wide/16 v12, -0x1

    iput-wide v12, v1, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    .line 369
    move-object/from16 v12, p1

    iput-object v12, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 370
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 371
    move/from16 v0, p3

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    .line 372
    move/from16 v0, p6

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 373
    move-wide/from16 v13, p7

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    .line 375
    nop

    .line 376
    const/4 v13, -0x1

    if-eq v4, v13, :cond_41

    if-eqz v3, :cond_41

    .line 378
    :try_start_37
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v3, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_40

    .line 382
    goto :goto_42

    .line 380
    :catch_40
    move-exception v0

    .line 384
    :cond_41
    move v0, v13

    :goto_42
    if-ne v0, v13, :cond_59

    .line 385
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 386
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 388
    iput-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_63

    .line 390
    :cond_59
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 391
    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 392
    iput-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 393
    move-object/from16 v2, p9

    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 396
    :goto_63
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    .line 398
    :cond_86
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*job*/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 401
    iput-wide v5, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 402
    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 403
    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 404
    move/from16 v2, p10

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v0

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_bc

    .line 408
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    .line 410
    :cond_bc
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_c5

    .line 411
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 413
    :cond_c5
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v7, v2

    if-eqz v2, :cond_d1

    .line 414
    const/high16 v2, 0x40000000  # 2.0f

    or-int/2addr v0, v2

    .line 416
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 417
    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    .line 419
    :cond_da
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 420
    const v2, -0x6bfffff1

    and-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    and-int/2addr v0, v11

    if-eqz v0, :cond_ea

    move v10, v11

    :cond_ea
    iput-boolean v10, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 423
    move-wide/from16 v2, p15

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 424
    move-wide/from16 v2, p17

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 426
    move/from16 v2, p19

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 428
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_10c

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 436
    :cond_10c
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p18

    .line 470
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 480
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 481
    if-eqz v0, :cond_33

    .line 482
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 483
    const-string v0, "JobSchedulerService"

    const-string v1, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_33
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBaseHeartbeat()J

    move-result-wide v8

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v11

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v14

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v18

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v20

    .line 441
    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 448
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 449
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_59

    .line 450
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_59

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "JobSchedulerService"

    const-string v2, "Cloning job with persisted run times"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :cond_59
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V
    .registers 34

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v8, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move/from16 v11, p8

    move-wide/from16 v16, p9

    move-wide/from16 v18, p11

    .line 493
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v20

    .line 493
    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 499
    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .registers 3

    .line 1428
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1433
    :cond_20
    const-string p0, "NEVER"

    return-object p0

    .line 1432
    :cond_23
    const-string p0, "RARE"

    return-object p0

    .line 1431
    :cond_26
    const-string p0, "FREQUENT"

    return-object p0

    .line 1430
    :cond_29
    const-string p0, "WORKING_SET"

    return-object p0

    .line 1429
    :cond_2c
    const-string p0, "ACTIVE"

    return-object p0
.end method

.method private computeEstimatedNetworkBytesLocked()J
    .registers 9

    .line 797
    nop

    .line 798
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkBytes()J

    move-result-wide v0

    .line 799
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 800
    return-wide v2

    .line 802
    :cond_e
    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    .line 804
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_33

    .line 805
    const/4 v4, 0x0

    :goto_16
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 806
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkBytes()J

    move-result-wide v5

    .line 807
    cmp-long v7, v5, v2

    if-nez v7, :cond_2f

    .line 808
    return-wide v2

    .line 810
    :cond_2f
    add-long/2addr v0, v5

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 814
    :cond_33
    return-wide v0
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .registers 26

    .line 511
    move/from16 v5, p3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3d

    .line 515
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 515
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 517
    add-long v8, v0, v6

    .line 518
    nop

    .line 520
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v6, v8, v6

    .line 521
    move-wide v11, v6

    move-wide v13, v8

    goto :goto_5d

    .line 522
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    add-long/2addr v6, v0

    goto :goto_4a

    :cond_49
    move-wide v6, v3

    .line 524
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v8

    add-long/2addr v8, v0

    goto :goto_5b

    :cond_56
    const-wide v8, 0x7fffffffffffffffL

    :goto_5b
    move-wide v11, v6

    move-wide v13, v8

    .line 527
    :goto_5d
    if-eqz p2, :cond_62

    move-object/from16 v2, p2

    goto :goto_6a

    :cond_62
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 529
    :goto_6a
    invoke-static {v2, v5, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v6

    .line 531
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 532
    if-eqz v0, :cond_7e

    .line 533
    invoke-interface {v0, v2, v5, v6}, Lcom/android/server/job/JobSchedulerInternal;->baseHeartbeatForApp(Ljava/lang/String;II)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_7f

    .line 534
    :cond_7e
    move-wide v7, v3

    .line 535
    :goto_7f
    new-instance v20, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, v20

    invoke-static/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v3

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v19}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    return-object v20
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .registers 8

    .line 1402
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1404
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1405
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1406
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1407
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1409
    :cond_2e
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p4

    .line 1410
    if-eqz p4, :cond_3e

    .line 1411
    check-cast p4, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1414
    :cond_3e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1415
    return-void
.end method

.method private dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V
    .registers 6

    .line 1392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p4, ": #"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1394
    const-string/jumbo p4, "x "

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1395
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_58

    .line 1396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "  URI grants:"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/GrantedUriPermissions;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "    "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1399
    :cond_58
    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .registers 8

    .line 1226
    cmp-long p4, p2, p4

    if-nez p4, :cond_b

    .line 1227
    const-string/jumbo p2, "none"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 1229
    :cond_b
    sub-long/2addr p2, p6

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1231
    :goto_f
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .registers 8

    .line 1234
    cmp-long p4, p2, p4

    if-nez p4, :cond_b

    .line 1235
    const-string/jumbo p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1237
    :cond_b
    sub-long/2addr p2, p6

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1239
    :goto_f
    return-void
.end method

.method private getProtoConstraint(I)I
    .registers 4

    .line 1326
    const/high16 v0, -0x80000000

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3f

    if-eq p1, v1, :cond_3d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3b

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_38

    const/high16 v1, 0x1000000

    if-eq p1, v1, :cond_35

    const/high16 v1, 0x2000000

    if-eq p1, v1, :cond_32

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_31

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_2f

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    .line 1350
    const/4 p1, 0x0

    return p1

    .line 1330
    :cond_2b
    return v0

    .line 1332
    :cond_2c
    return v0

    .line 1338
    :cond_2d
    const/4 p1, 0x5

    return p1

    .line 1334
    :cond_2f
    const/4 p1, 0x7

    return p1

    .line 1336
    :cond_31
    return v0

    .line 1340
    :cond_32
    const/16 p1, 0x9

    return p1

    .line 1348
    :cond_35
    const/16 p1, 0xa

    return p1

    .line 1328
    :cond_38
    const/16 p1, 0xb

    return p1

    .line 1344
    :cond_3b
    const/4 p1, 0x3

    return p1

    .line 1342
    :cond_3d
    const/4 p1, 0x6

    return p1

    .line 1346
    :cond_3f
    return v1
.end method

.method private isConstraintsSatisfied(I)Z
    .registers 5

    .line 1145
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 1147
    return v1

    .line 1150
    :cond_7
    nop

    .line 1151
    if-ne v0, v1, :cond_11

    .line 1153
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v2, -0x7ffffff1

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 1156
    :cond_11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method private isReady(I)Z
    .registers 4

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1117
    return v1

    .line 1124
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_18

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 1124
    :goto_1b
    return v1
.end method

.method private static resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I
    .registers 2

    .line 1440
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1441
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    .line 1440
    return p0
.end method

.method private static ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .registers 3

    .line 582
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 583
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p1, p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    .line 585
    :cond_f
    return-void
.end method

.method private static ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IActivityManager;",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    .line 603
    if-eqz p1, :cond_15

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 605
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 606
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {p0, v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 609
    :cond_15
    return-void
.end method

.method private updateEstimatedNetworkBytesLocked()V
    .registers 3

    .line 790
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->computeEstimatedNetworkBytesLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    .line 791
    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .registers 3

    .line 768
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 769
    return-void
.end method

.method public clearPersistedUtcTimes()V
    .registers 2

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 931
    return-void
.end method

.method clearTrackingController(I)Z
    .registers 4

    .line 1040
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_c

    .line 1041
    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1042
    const/4 p1, 0x1

    return p1

    .line 1044
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public completeWorkLocked(Landroid/app/IActivityManager;I)Z
    .registers 8

    .line 588
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_27

    .line 591
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 592
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v4

    if-ne v4, p2, :cond_24

    .line 593
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 595
    const/4 p1, 0x1

    return p1

    .line 590
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 599
    :cond_27
    return v1
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 559
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    .line 560
    if-eqz v0, :cond_28

    .line 561
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 564
    :cond_20
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 567
    :cond_28
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 568
    return-object v0

    .line 570
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .registers 24

    .line 1661
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1663
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1664
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    const-wide v9, 0x10300000018L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1670
    const-wide v11, 0x1080000000aL

    const-wide v13, 0x10800000002L

    const-wide/16 v15, 0x0

    if-eqz p4, :cond_251

    .line 1671
    const-wide v9, 0x10b00000006L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1673
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1675
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1676
    const-wide v7, 0x10300000003L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1677
    const-wide v7, 0x10300000004L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1679
    const-wide v7, 0x10800000005L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1680
    const-wide v7, 0x11100000006L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1681
    const-wide v7, 0x10500000007L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1683
    const-wide v7, 0x10800000008L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1684
    const-wide v7, 0x10800000009L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1685
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1687
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_162

    .line 1688
    const/4 v4, 0x0

    :goto_ee
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_132

    .line 1689
    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1690
    iget-object v13, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v13

    aget-object v13, v13, v4

    .line 1692
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-virtual {v1, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1693
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 1694
    if-eqz v13, :cond_122

    .line 1695
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_127

    .line 1694
    :cond_122
    const-wide v5, 0x10900000002L

    .line 1698
    :goto_127
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1688
    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    goto :goto_ee

    .line 1700
    :cond_132
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_14a

    .line 1701
    const-wide v4, 0x1030000000cL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1702
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 1701
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1704
    :cond_14a
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_162

    .line 1705
    const-wide v4, 0x1030000000dL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1706
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    .line 1705
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1709
    :cond_162
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_184

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_184

    .line 1710
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1712
    :cond_184
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1a6

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_1a6

    .line 1713
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1715
    :cond_1a6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_1bc

    .line 1716
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1718
    :cond_1bc
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_1c8

    .line 1719
    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1721
    :cond_1c8
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_1de

    .line 1722
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    const-wide v5, 0x10b00000012L

    invoke-virtual {v4, v1, v5, v6}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1724
    :cond_1de
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1ee

    .line 1725
    const-wide v6, 0x10300000013L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1727
    :cond_1ee
    const-wide v4, 0x10300000014L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1728
    const-wide v4, 0x10300000015L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1730
    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1731
    const-wide v6, 0x10e00000001L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1732
    const-wide v6, 0x10300000002L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1733
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v13

    .line 1732
    invoke-virtual {v1, v6, v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1734
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1736
    const-wide v4, 0x10800000017L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1737
    const-wide v4, 0x10800000018L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1739
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1742
    :cond_251
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1743
    if-eqz p4, :cond_295

    .line 1744
    const-wide v4, 0x20e00000008L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1745
    const-wide v4, 0x20e00000009L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1747
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1748
    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1749
    const-wide v4, 0x1080000001bL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1750
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    .line 1749
    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1754
    :cond_295
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-wide v6, 0x20e0000000bL

    if-eqz v4, :cond_2a4

    .line 1755
    const/4 v4, 0x0

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1758
    :cond_2a4
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v8, 0x2

    and-int/2addr v4, v8

    if-eqz v4, :cond_2ad

    .line 1759
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1762
    :cond_2ad
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b6

    .line 1763
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1766
    :cond_2b6
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2c0

    .line 1767
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1770
    :cond_2c0
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2c9

    .line 1771
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1774
    :cond_2c9
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2d3

    .line 1775
    const/4 v4, 0x5

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1778
    :cond_2d3
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2dd

    .line 1779
    const/4 v4, 0x6

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1784
    :cond_2dd
    const-wide v4, 0x10b00000019L  # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1785
    const-wide v6, 0x10800000001L

    iget-boolean v8, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1786
    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v7, 0x10800000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1788
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1790
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v4, :cond_31d

    .line 1791
    const/4 v4, 0x0

    :goto_302
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_31d

    .line 1792
    const-wide v5, 0x2090000000cL

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1791
    add-int/lit8 v4, v4, 0x1

    goto :goto_302

    .line 1795
    :cond_31d
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v4, :cond_341

    .line 1796
    const/4 v4, 0x0

    :goto_322
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_341

    .line 1797
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1798
    const-wide v6, 0x2090000000dL

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1796
    add-int/lit8 v4, v4, 0x1

    goto :goto_322

    .line 1802
    :cond_341
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v4, :cond_34d

    .line 1803
    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/net/Network;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1806
    :cond_34d
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_373

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_373

    .line 1807
    const/4 v4, 0x0

    :goto_358
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_373

    .line 1808
    const-wide v5, 0x20b0000000fL

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 1807
    add-int/lit8 v4, v4, 0x1

    goto :goto_358

    .line 1811
    :cond_373
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_399

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_399

    .line 1812
    const/4 v4, 0x0

    :goto_37e
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_399

    .line 1813
    const-wide v5, 0x20b00000010L

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 1812
    add-int/lit8 v4, v4, 0x1

    goto :goto_37e

    .line 1817
    :cond_399
    const-wide v4, 0x10e00000011L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1818
    const-wide v4, 0x10300000012L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v6, p5, v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1819
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v6, v4, v15

    const-wide v7, 0x11200000013L

    if-nez v6, :cond_3bf

    .line 1820
    const/4 v4, 0x0

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3c4

    .line 1822
    :cond_3bf
    sub-long v4, v4, p5

    invoke-virtual {v1, v7, v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1825
    :goto_3c4
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    const-wide v7, 0x11200000014L

    if-nez v6, :cond_3d9

    .line 1826
    const/4 v4, 0x0

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3de

    .line 1828
    :cond_3d9
    sub-long v4, v4, p5

    invoke-virtual {v1, v7, v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1832
    :goto_3de
    const-wide v4, 0x10500000015L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1833
    const-wide v4, 0x10300000016L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1834
    const-wide v4, 0x10300000017L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1836
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1837
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V
    .registers 21

    .line 1446
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1447
    const-string v0, " tag="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    const-string v0, "Source: uid="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1450
    const-string v0, " user="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1451
    const-string v0, " pkg="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const/16 v0, 0x20

    const-string v1, "  "

    const/4 v2, 0x0

    const-wide/16 v13, 0x0

    if-eqz p3, :cond_2ef

    .line 1453
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "JobInfo:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Service: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1457
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  PERIODIC: interval="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1459
    const-string v3, " flex="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1462
    :cond_90
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1463
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  PERSISTED"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    :cond_a0
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    if-eqz v3, :cond_bd

    .line 1466
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Priority: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    :cond_bd
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    if-eqz v3, :cond_da

    .line 1470
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Flags: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    if-eqz v3, :cond_103

    .line 1474
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Internal flags: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_100

    .line 1478
    const-string v3, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    :cond_100
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1482
    :cond_103
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Requires: charging="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " batteryNotLow="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " deviceIdle="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1486
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_1ae

    .line 1487
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Trigger content URIs:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    move v3, v2

    :goto_141
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_172

    .line 1489
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1490
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1488
    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    .line 1494
    :cond_172
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-ltz v3, :cond_190

    .line 1495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Trigger update delay: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1499
    :cond_190
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-ltz v3, :cond_1ae

    .line 1500
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Trigger max delay: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1502
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1505
    :cond_1ae
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_1d7

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v3

    if-nez v3, :cond_1d7

    .line 1506
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Extras: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    :cond_1d7
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_200

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v3

    if-nez v3, :cond_200

    .line 1510
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Transient extras: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1511
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    :cond_200
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_223

    .line 1514
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Clip data: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1516
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1517
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1519
    :cond_223
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v3, :cond_243

    .line 1520
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Granted URI permissions:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1523
    :cond_243
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_25c

    .line 1524
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Network type: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1525
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1527
    :cond_25c
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_271

    .line 1528
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Network bytes: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1531
    :cond_271
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-eqz v3, :cond_28f

    .line 1532
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Minimum latency: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1534
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1536
    :cond_28f
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-eqz v3, :cond_2ad

    .line 1537
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Max execution delay: "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1538
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1539
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1541
    :cond_2ad
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Backoff: policy="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1542
    const-string v3, " initial="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1543
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1544
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v3

    if-eqz v3, :cond_2df

    .line 1545
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Has early constraint"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    :cond_2df
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v3

    if-eqz v3, :cond_2ef

    .line 1548
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Has late constraint"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    :cond_2ef
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Required constraints:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, v9, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1553
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1554
    if-eqz p3, :cond_350

    .line 1555
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Satisfied constraints:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, v9, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1558
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Unsatisfied constraints:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1559
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, v4

    and-int/2addr v3, v4

    invoke-virtual {p0, v9, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1561
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1562
    iget-boolean v3, v8, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v3, :cond_334

    .line 1563
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Doze whitelisted: true"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    :cond_334
    iget-boolean v3, v8, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v3, :cond_340

    .line 1566
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Uid: active"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    :cond_340
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v3

    if-eqz v3, :cond_350

    .line 1569
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Is exempted from app standby"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    :cond_350
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v3, :cond_3ab

    .line 1573
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Tracking:"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_367

    const-string v3, " BATTERY"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :cond_367
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_372

    const-string v3, " CONNECTIVITY"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    :cond_372
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_37d

    const-string v3, " CONTENT"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    :cond_37d
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_388

    const-string v3, " IDLE"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    :cond_388
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_393

    const-string v3, " STORAGE"

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    :cond_393
    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_39d

    const-string v0, " TIME"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    :cond_39d
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3a8

    const-string v0, " QUOTA"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    :cond_3a8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1584
    :cond_3ab
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Implicit constraints:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotDozing: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1587
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotRestrictedInBg: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1589
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_3e8

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 1590
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyDeadlineSatisfied: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1594
    :cond_3e8
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_438

    .line 1595
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed authorities:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    move v0, v2

    :goto_3f5
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_411

    .line 1597
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f5

    .line 1599
    :cond_411
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_438

    .line 1600
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed URIs:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    move v0, v2

    :goto_41e
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_438

    .line 1602
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1601
    add-int/lit8 v0, v0, 0x1

    goto :goto_41e

    .line 1606
    :cond_438
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_449

    .line 1607
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Network: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1609
    :cond_449
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_472

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_472

    .line 1610
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    move v0, v2

    :goto_45c
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_472

    .line 1612
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_45c

    .line 1615
    :cond_472
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_49b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_49b

    .line 1616
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    nop

    :goto_485
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_49b

    .line 1618
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v0, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1617
    add-int/lit8 v2, v2, 0x1

    goto :goto_485

    .line 1621
    :cond_49b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Standby bucket: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-lez v0, :cond_4bb

    .line 1624
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Base heartbeat: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1627
    :cond_4bb
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_4d1

    .line 1628
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Deferred since: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1630
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1632
    :cond_4d1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Enqueue time: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1634
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1635
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Run time: earliest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1637
    const-string v0, ", latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1639
    const-string v0, ", original latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1642
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1643
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_524

    .line 1644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Num failures: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1646
    :cond_524
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1648
    iget-wide v1, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v1, v1, v13

    const-string v2, "%Y-%m-%d %H:%M:%S"

    if-eqz v1, :cond_545

    .line 1649
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Last successful run: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1651
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    :cond_545
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v1, v3, v13

    if-eqz v1, :cond_55f

    .line 1654
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Last failed run: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1656
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    :cond_55f
    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 6

    .line 1356
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    .line 1357
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1359
    :cond_8
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_10

    .line 1360
    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1362
    :cond_10
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_18

    .line 1363
    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1365
    :cond_18
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_21

    .line 1366
    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1368
    :cond_21
    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_2a

    .line 1369
    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1371
    :cond_2a
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_32

    .line 1372
    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1374
    :cond_32
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3b

    .line 1375
    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1377
    :cond_3b
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_45

    .line 1378
    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    :cond_45
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_4f

    .line 1381
    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1383
    :cond_4f
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_59

    .line 1384
    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1386
    :cond_59
    const/high16 v0, 0x400000

    and-int/2addr p4, v0

    if-eqz p4, :cond_63

    .line 1387
    const/16 p4, 0xb

    invoke-virtual {p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1389
    :cond_63
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .registers 4

    .line 1284
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 1285
    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_12

    .line 1288
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    :cond_12
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1b

    .line 1291
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    :cond_1b
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_25

    .line 1294
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    :cond_25
    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_2f

    .line 1297
    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    :cond_2f
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_38

    .line 1300
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    :cond_38
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_42

    .line 1303
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1305
    :cond_42
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_4c

    .line 1306
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    :cond_4c
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_56

    .line 1309
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1311
    :cond_56
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_60

    .line 1312
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    :cond_60
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6a

    .line 1315
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    :cond_6a
    if-eqz p2, :cond_7d

    .line 1318
    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    :cond_7d
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .registers 10

    .line 543
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 546
    :cond_b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p2, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 547
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 548
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 549
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 550
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 551
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 550
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 553
    :cond_40
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 555
    return-void
.end method

.method public getBaseHeartbeat()J
    .registers 3

    .line 722
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    return-wide v0
.end method

.method public getBatteryName()Ljava/lang/String;
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method getBucketName()Ljava/lang/String;
    .registers 2

    .line 1421
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .registers 3

    .line 879
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEstimatedNetworkBytes()J
    .registers 3

    .line 818
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .registers 13

    .line 906
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 907
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide v6, 0x7fffffffffffffffL

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez v2, :cond_1c

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_1c

    .line 908
    return v3

    .line 909
    :cond_1c
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v2, v8, v4

    const/4 v4, 0x0

    if-nez v2, :cond_2c

    .line 910
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v4

    :goto_2b
    return v3

    .line 911
    :cond_2c
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v10, v6

    if-nez v2, :cond_39

    .line 912
    cmp-long v0, v0, v8

    if-ltz v0, :cond_37

    goto :goto_38

    :cond_37
    move v3, v4

    :goto_38
    return v3

    .line 914
    :cond_39
    cmp-long v2, v0, v8

    if-gtz v2, :cond_3e

    .line 915
    return v4

    .line 916
    :cond_3e
    cmp-long v2, v0, v10

    if-ltz v2, :cond_43

    .line 917
    return v3

    .line 919
    :cond_43
    sub-long/2addr v0, v8

    long-to-float v0, v0

    sub-long/2addr v10, v8

    long-to-float v1, v10

    div-float/2addr v0, v1

    return v0
.end method

.method public getInternalFlags()I
    .registers 2

    .line 764
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .registers 3

    .line 1056
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .registers 3

    .line 1052
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .registers 3

    .line 883
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .registers 2

    .line 694
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .registers 3

    .line 887
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 756
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .registers 2

    .line 772
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .registers 2

    .line 706
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .registers 2

    .line 710
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .registers 2

    .line 718
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSdkVersion()I
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    return v0
.end method

.method public getTriggerContentMaxDelay()J
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    .line 868
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 869
    const-wide/32 v0, 0x1d4c0

    return-wide v0

    .line 871
    :cond_10
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 5

    .line 859
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    .line 860
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 861
    const-wide/16 v0, 0x2710

    return-wide v0

    .line 863
    :cond_f
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 744
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 714
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .registers 3

    .line 731
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .registers 2

    .line 831
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasChargingConstraint()Z
    .registers 3

    .line 827
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasConnectivityConstraint()Z
    .registers 3

    .line 823
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .registers 3

    .line 855
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .registers 3

    .line 847
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasIdleConstraint()Z
    .registers 2

    .line 851
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerConstraint()Z
    .registers 2

    .line 835
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .registers 2

    .line 839
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .registers 3

    .line 843
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasWorkLocked()Z
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .registers 3

    .line 1036
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public isConstraintsSatisfied()Z
    .registers 2

    .line 1141
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .registers 2

    .line 875
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 1063
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public matches(II)Z
    .registers 4

    .line 1160
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_e

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne p2, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 781
    :cond_11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 782
    return-void

    .line 784
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 787
    :cond_29
    return-void

    .line 778
    :cond_2a
    :goto_2a
    return-void
.end method

.method public prepareLocked(Landroid/app/IActivityManager;)V
    .registers 10

    .line 638
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_1b

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already prepared: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobSchedulerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 642
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 646
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 647
    if-eqz v2, :cond_40

    .line 648
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 649
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    .line 648
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 651
    :cond_40
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .registers 3

    .line 688
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 689
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 691
    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(Z)Z
    .registers 3

    .line 991
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 993
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 994
    const/4 p1, 0x1

    return p1

    .line 996
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method setBatteryNotLowConstraintSatisfied(Z)Z
    .registers 3

    .line 940
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setChargingConstraintSatisfied(Z)Z
    .registers 3

    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .registers 3

    .line 970
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setConstraintSatisfied(IZ)Z
    .registers 7

    .line 1020
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1021
    :goto_a
    if-ne v0, p2, :cond_d

    .line 1022
    return v2

    .line 1024
    :cond_d
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v3, p1

    and-int/2addr v0, v3

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    move p1, v2

    :goto_15
    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 1025
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const p2, -0x6bfffff1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1032
    return v1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .registers 3

    .line 975
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .registers 5

    .line 955
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 957
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 958
    return v2

    .line 960
    :cond_1e
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .registers 4

    .line 980
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    .line 981
    const/high16 p2, 0x2000000

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    .line 983
    const/4 p2, 0x1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_18

    :cond_17
    move v0, p2

    :cond_18
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 984
    return p2

    .line 986
    :cond_1b
    return v0
.end method

.method setIdleConstraintSatisfied(Z)Z
    .registers 3

    .line 965
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .registers 3

    .line 891
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 892
    return-void
.end method

.method setQuotaConstraintSatisfied(Z)Z
    .registers 3

    .line 1001
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1003
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1004
    const/4 p1, 0x1

    return p1

    .line 1006
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setStandbyBucket(I)V
    .registers 2

    .line 726
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 727
    return-void
.end method

.method setStorageNotLowConstraintSatisfied(Z)Z
    .registers 3

    .line 945
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .registers 3

    .line 950
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result p1

    return p1
.end method

.method setTrackingController(I)V
    .registers 3

    .line 1048
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1049
    return-void
.end method

.method setUidActive(Z)Z
    .registers 3

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_8

    .line 1012
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 1013
    const/4 p1, 0x1

    return p1

    .line 1015
    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setWhenStandbyDeferred(J)V
    .registers 3

    .line 736
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 737
    return-void
.end method

.method public stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 612
    const/4 v0, 0x0

    if-eqz p2, :cond_37

    .line 615
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_11

    .line 616
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 618
    :cond_11
    iget-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez p1, :cond_1a

    .line 619
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_2b

    .line 620
    :cond_1a
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2b

    .line 621
    iget-object p1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    :cond_2b
    :goto_2b
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 624
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 625
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput p1, p2, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 626
    invoke-direct {p2}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    goto :goto_45

    .line 629
    :cond_37
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    .line 630
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 631
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    .line 632
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 634
    :goto_45
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 635
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1250
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1252
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .registers 3

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1263
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1265
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1165
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1166
    const-string v0, "JobStatus{"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v0, " #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1170
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1172
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v0, " u="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    const-string v0, " s="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1178
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_89

    .line 1180
    :cond_64
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 1181
    const-string v0, " TIME="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1183
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1186
    :cond_89
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1187
    const-string v0, " NET"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_96
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1190
    const-string v0, " CHARGING"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_a3
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1193
    const-string v0, " BATNOTLOW"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_b0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1196
    const-string v0, " STORENOTLOW"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :cond_bd
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1199
    const-string v0, " IDLE"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_ca
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1202
    const-string v0, " PERIODIC"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_d7
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1205
    const-string v0, " PERSISTED"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_e4
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_f0

    .line 1208
    const-string v0, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_f0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_10a

    .line 1211
    const-string v0, " URIS="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :cond_10a
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_118

    .line 1215
    const-string v0, " failures="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1218
    :cond_118
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1219
    const-string v0, " READY"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_123
    const-string/jumbo v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unprepareLocked(Landroid/app/IActivityManager;)V
    .registers 4

    .line 654
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_24

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hasn\'t been prepared: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobSchedulerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz p1, :cond_23

    .line 657
    const-string v1, "Was already unprepared at "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :cond_23
    return-void

    .line 661
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 663
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 665
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_3c

    .line 666
    invoke-virtual {v0, p1}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    .line 667
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 669
    :cond_3c
    return-void
.end method

.method wouldBeReadyWithConstraint(I)Z
    .registers 9

    .line 1071
    nop

    .line 1072
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1073
    const/high16 v1, 0x40000000  # 2.0f

    const/high16 v2, 0x2000000

    const/high16 v3, 0x1000000

    const/high16 v4, 0x400000

    const/4 v5, 0x1

    if-eq p1, v4, :cond_27

    if-eq p1, v3, :cond_22

    if-eq p1, v2, :cond_1d

    if-eq p1, v1, :cond_18

    .line 1091
    or-int/2addr v0, p1

    const/4 v5, 0x0

    move v6, v5

    goto :goto_2c

    .line 1079
    :cond_18
    iget-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1080
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1081
    goto :goto_2c

    .line 1083
    :cond_1d
    iget-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1084
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1085
    goto :goto_2c

    .line 1087
    :cond_22
    iget-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1088
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1089
    goto :goto_2c

    .line 1075
    :cond_27
    iget-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1076
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1077
    nop

    .line 1095
    :goto_2c
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    .line 1097
    if-eq p1, v4, :cond_42

    if-eq p1, v3, :cond_3f

    if-eq p1, v2, :cond_3c

    if-eq p1, v1, :cond_39

    goto :goto_45

    .line 1102
    :cond_39
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1103
    goto :goto_45

    .line 1105
    :cond_3c
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1106
    goto :goto_45

    .line 1108
    :cond_3f
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_45

    .line 1099
    :cond_42
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1100
    nop

    .line 1111
    :goto_45
    return v0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1274
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1276
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1280
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1281
    return-void
.end method
