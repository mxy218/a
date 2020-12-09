.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4

    .line 2818
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2820
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 2822
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .registers 3

    .line 2818
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    monitor-enter p0

    .line 2841
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v0, :cond_9

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    monitor-exit p0

    return-wide v0

    .line 2843
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2844
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    monitor-exit p0

    return-wide v2

    .line 2840
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .registers 8

    monitor-enter p0

    .line 2828
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 2829
    :goto_e
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_29

    if-ne v0, v1, :cond_14

    monitor-exit p0

    return-void

    .line 2830
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2831
    if-eqz v0, :cond_1d

    .line 2832
    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    goto :goto_25

    .line 2834
    :cond_1d
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long/2addr v1, v5

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    .line 2836
    :goto_25
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_29

    .line 2837
    monitor-exit p0

    return-void

    .line 2827
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
