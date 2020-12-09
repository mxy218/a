.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$JobSet;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final JOB_PERSIST_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/android/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final mJobsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field private mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field private mRtcGood:Z

.field private mWriteInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field private final mWriteRunnable:Ljava/lang/Runnable;

.field final mWriteScheduleLock:Ljava/lang/Object;

.field private mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field private final mXmlTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .registers 6

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 379
    new-instance v0, Lcom/android/server/job/JobStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 140
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 143
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "system"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    new-instance p2, Ljava/io/File;

    const-string p3, "job"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 146
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p3, Ljava/io/File;

    const-string v0, "jobs.xml"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "jobs"

    invoke-direct {p1, p3, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 148
    new-instance p1, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {p1}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 161
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 162
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_61

    const/4 p1, 0x1

    goto :goto_62

    :cond_61
    const/4 p1, 0x0

    :goto_62
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 164
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean p2, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    .line 165
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/job/JobStore;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 84
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/job/JobStore;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 1

    .line 84
    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method static synthetic access$600(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 3

    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 613
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 614
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_24

    .line 615
    :cond_23
    move-wide v2, v4

    .line 616
    :goto_24
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_45

    .line 617
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v8, p1, v0

    goto :goto_46

    .line 618
    :cond_45
    nop

    .line 619
    :goto_46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .registers 5

    .line 116
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_1a

    .line 118
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 121
    :cond_1a
    sget-object p0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object p0

    .line 122
    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 131
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    .line 132
    return-object v0
.end method

.method private static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 623
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 623
    return p0
.end method

.method static synthetic lambda$getRtcCorrectedJobsLocked$0(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 21

    .line 188
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_3e

    .line 190
    nop

    .line 191
    move-wide v1, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    .line 192
    new-instance v14, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getBaseHeartbeat()J

    move-result-wide v3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 194
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v12

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 196
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_3e
    return-void
.end method

.method private maybeWriteStatusToDiskAsync()V
    .registers 6

    .line 331
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_20

    .line 333
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 334
    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 339
    :cond_20
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 211
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 212
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 214
    :cond_14
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_2e

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added job status to store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JobStore"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2e
    return v0
.end method

.method public clear()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 266
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 267
    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .registers 5

    .line 172
    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    return p1
.end method

.method public countJobsForUid(I)I
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result p1

    return p1
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    .line 311
    return-void
.end method

.method public forEachJob(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 302
    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 307
    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 315
    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->get(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    return-object p1
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 183
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 187
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;-><init>(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 200
    return-void
.end method

.method public jobTimesInflatedValid()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return v0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 344
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 345
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 243
    if-nez v0, :cond_24

    .line 244
    sget-boolean p2, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p2, :cond_22

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobStore"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_22
    const/4 p1, 0x0

    return p1

    .line 249
    :cond_24
    if-eqz p2, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 250
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 252
    :cond_2f
    return v0
.end method

.method public removeJobsOfNonUsers([I)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfNonUsers([I)V

    .line 261
    return-void
.end method

.method public size()I
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v0

    return v0
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 356
    add-long v2, v0, p1

    .line 357
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 358
    :goto_9
    :try_start_9
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_22

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 360
    cmp-long v7, v5, v2

    if-ltz v7, :cond_18

    .line 362
    const/4 p1, 0x0

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    return p1

    .line 365
    :cond_18
    :try_start_18
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long/2addr v5, v0

    add-long/2addr v5, p1

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_21
    .catchall {:try_start_18 .. :try_end_1f} :catchall_25

    .line 369
    nop

    .line 370
    goto :goto_9

    .line 366
    :catch_21
    move-exception p1

    .line 371
    :cond_22
    :try_start_22
    monitor-exit v4

    .line 372
    const/4 p1, 0x1

    return p1

    .line 371
    :catchall_25
    move-exception p1

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_25

    throw p1
.end method
