.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mOnBatteryScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mUseLatestStates:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 23

    .line 138
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    .line 75
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 93
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 96
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 108
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 117
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 119
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 122
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 127
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-array v11, v3, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v11, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v19}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 326
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 394
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 139
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    .line 140
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    .registers 6

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 525
    const-string v0, "BatteryExternalStatsWorker"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 526
    return-object v1

    .line 530
    :cond_6
    const-wide/16 v2, 0x7d0

    .line 531
    :try_start_8
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 532
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_21

    .line 534
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 536
    iget-object v2, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 538
    if-eqz v2, :cond_21

    .line 539
    return-object v2

    .line 542
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no controller energy info supplied for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_3a} :catch_3b

    .line 545
    goto :goto_5a

    .line 543
    :catch_3b
    move-exception v2

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_5a
    return-object v1
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    .line 245
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 248
    :cond_b
    return-void
.end method

.method private extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    sub-long/2addr v2, v4

    .line 552
    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 553
    iget-object v6, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 554
    iget-object v8, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v8, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 555
    iget-object v10, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v10, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 556
    iget-object v12, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v12, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 560
    iget-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 561
    move-wide v15, v12

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v12

    iput-wide v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v12

    iput v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 564
    iget-wide v12, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    sub-long/2addr v12, v8

    .line 565
    move-object/from16 v17, v14

    move-wide/from16 v18, v15

    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    sub-long/2addr v14, v10

    .line 566
    move-wide/from16 v20, v8

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    sub-long/2addr v8, v6

    .line 567
    move-wide/from16 v22, v10

    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    sub-long/2addr v10, v4

    .line 569
    const-wide/16 v4, 0x0

    cmp-long v16, v12, v4

    const-string v4, "BatteryExternalStatsWorker"

    const-wide/16 v26, 0x2ee

    if-ltz v16, :cond_10b

    const-wide/16 v24, 0x0

    cmp-long v5, v14, v24

    if-ltz v5, :cond_10b

    cmp-long v5, v10, v24

    if-ltz v5, :cond_10b

    cmp-long v5, v8, v24

    if-gez v5, :cond_5e

    move-object/from16 v0, v17

    goto/16 :goto_10d

    .line 590
    :cond_5e
    move-wide/from16 v28, v8

    add-long v8, v12, v14

    .line 592
    cmp-long v5, v8, v2

    if-lez v5, :cond_e8

    .line 594
    nop

    .line 595
    add-long v26, v2, v26

    cmp-long v5, v8, v26

    if-lez v5, :cond_e3

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    const-string v0, "Total Active time "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 599
    const-string v0, " is longer than sample period "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 601
    const-string v0, ".\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v0, "Previous WiFi snapshot: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "idle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 604
    const-string v2, " rx="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    move-wide/from16 v6, v22

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 606
    const-string v3, " tx="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    move-wide/from16 v6, v20

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 608
    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v18

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v9, "Current WiFi snapshot: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-wide v7, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 612
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-wide v7, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 614
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_e3
    move-wide/from16 v4, v18

    const-wide/16 v2, 0x0

    goto :goto_eb

    .line 620
    :cond_e8
    move-wide/from16 v4, v18

    sub-long/2addr v2, v8

    .line 623
    :goto_eb
    move-object/from16 v0, v17

    iput-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 624
    iput-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 625
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 631
    move-wide/from16 v8, v28

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 632
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    goto :goto_151

    .line 569
    :cond_10b
    move-object/from16 v0, v17

    .line 573
    :goto_10d
    iget-wide v5, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iget-wide v7, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    add-long/2addr v5, v7

    iget-wide v7, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    add-long/2addr v5, v7

    .line 575
    add-long v2, v2, v26

    cmp-long v2, v5, v2

    if-gtz v2, :cond_130

    .line 576
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 577
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 578
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 579
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 580
    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    goto :goto_13c

    .line 582
    :cond_130
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 583
    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 584
    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 585
    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 586
    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 588
    :goto_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    nop

    .line 635
    :goto_151
    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 636
    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 79
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 80
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 81
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "batterystats-worker"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 84
    return-object v0
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 264
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "worker shutdown"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 267
    :cond_15
    if-eqz p1, :cond_23

    .line 270
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    .line 271
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_23

    .line 273
    :cond_22
    return-object p1

    .line 277
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 308
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "worker shutdown"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 311
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_27

    .line 312
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 313
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 316
    :cond_27
    iget p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 317
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .line 407
    move-object v1, p0

    .line 408
    nop

    .line 409
    nop

    .line 410
    nop

    .line 412
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    .line 414
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_1a

    .line 415
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 419
    :cond_1a
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_41

    .line 422
    :try_start_1e
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()J

    move-result-wide v3

    const-wide/32 v5, 0x10000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3c

    .line 423
    new-instance v3, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v0, "wifi"

    invoke-direct {v3, v0}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_34} :catch_3e

    .line 424
    :try_start_34
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, v3}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_3d

    .line 426
    :catch_3a
    move-exception v0

    goto :goto_42

    .line 422
    :cond_3c
    move-object v3, v2

    .line 428
    :goto_3d
    goto :goto_42

    .line 426
    :catch_3e
    move-exception v0

    move-object v3, v2

    goto :goto_42

    .line 419
    :cond_41
    move-object v3, v2

    .line 430
    :goto_42
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 431
    :try_start_45
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 432
    monitor-exit v4

    .line 433
    const/4 v0, 0x1

    goto :goto_52

    .line 432
    :catchall_4d
    move-exception v0

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v0

    .line 412
    :cond_50
    const/4 v0, 0x0

    move-object v3, v2

    .line 436
    :goto_52
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_67

    .line 438
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 439
    if-eqz v4, :cond_67

    .line 440
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string v6, "bluetooth"

    invoke-direct {v5, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    goto :goto_68

    .line 445
    :cond_67
    move-object v5, v2

    :goto_68
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_98

    .line 447
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_78

    .line 448
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 451
    :cond_78
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_89

    .line 452
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "telephony"

    invoke-direct {v2, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 455
    :cond_89
    if-nez v0, :cond_98

    .line 456
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 457
    :try_start_8e
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 458
    monitor-exit v4

    goto :goto_98

    :catchall_95
    move-exception v0

    monitor-exit v4
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_95

    throw v0

    .line 462
    :cond_98
    :goto_98
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 463
    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 464
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telephony/ModemActivityInfo;

    .line 466
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 467
    :try_start_ad
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0xe

    const/4 v12, 0x0

    .line 467
    move-object v11, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 473
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_da

    .line 474
    if-eqz p5, :cond_d1

    .line 475
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v5

    .line 476
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v6

    goto :goto_d5

    .line 474
    :cond_d1
    move/from16 v5, p3

    move/from16 v6, p4

    .line 478
    :goto_d5
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    .line 481
    :cond_da
    and-int/lit8 v5, p2, 0x1f

    if-eqz v5, :cond_e8

    .line 482
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 483
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    .line 486
    :cond_e8
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_f1

    .line 487
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    .line 490
    :cond_f1
    if-eqz v3, :cond_115

    .line 491
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 492
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    goto :goto_115

    .line 494
    :cond_ff
    const-string v5, "BatteryExternalStatsWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth info is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_115
    :goto_115
    monitor-exit v4
    :try_end_116
    .catchall {:try_start_ad .. :try_end_116} :catchall_164

    .line 502
    if-eqz v0, :cond_13f

    .line 503
    invoke-virtual {v0}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_128

    .line 504
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    goto :goto_13f

    .line 506
    :cond_128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi info is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_13f
    :goto_13f
    if-eqz v2, :cond_163

    .line 511
    invoke-virtual {v2}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 512
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_163

    .line 514
    :cond_14d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem info is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_163
    :goto_163
    return-void

    .line 497
    :catchall_164
    move-exception v0

    :try_start_165
    monitor-exit v4
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    throw v0
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .registers 3

    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 226
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 229
    :cond_e
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .registers 3

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 323
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V
    .registers 3

    .line 214
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 215
    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker()V
    .registers 3

    .line 236
    const-string v0, "battery-level"

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 183
    monitor-exit v0

    return-object v2

    .line 185
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_39

    .line 186
    monitor-enter p0

    .line 187
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_34

    .line 188
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 188
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 188
    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 192
    :cond_34
    monitor-exit p0

    .line 193
    return-object v2

    .line 192
    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw p1

    .line 185
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 151
    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    .line 149
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 199
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 201
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 202
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 203
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 205
    :cond_12
    const-string/jumbo p1, "screen-state"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 206
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_1
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 211
    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 218
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object p1

    .line 219
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 164
    monitor-exit v0

    return-object v2

    .line 166
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    .line 167
    monitor-enter p0

    .line 168
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_36

    .line 169
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 169
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    invoke-interface {v0, p1, p3, p4, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 174
    :cond_36
    monitor-exit p0

    .line 175
    return-object v2

    .line 174
    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw p1

    .line 166
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 297
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 299
    :cond_e
    monitor-exit p0

    return-void

    .line 295
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 238
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object p1

    .line 239
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    monitor-exit p0

    return-object v0

    .line 285
    :cond_17
    :try_start_17
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    .line 280
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 303
    return-void
.end method
