.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 1907
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 1926
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 37

    .line 1910
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_36

    if-eq v1, v3, :cond_2f

    if-eq v1, v2, :cond_10

    goto :goto_35

    .line 2019
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 2020
    if-gtz v1, :cond_35

    .line 2025
    if-gez v1, :cond_35

    .line 2026
    const-string v1, "ActivityManager"

    const-string v2, "Activity start nesting undercount!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_35

    .line 2015
    :cond_2f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    .line 2016
    nop

    .line 2038
    :cond_35
    :goto_35
    return-void

    .line 1912
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1913
    nop

    .line 1914
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1915
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_53

    .line 1916
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v9, v7, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 1917
    new-instance v7, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v7}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_54

    .line 1915
    :cond_53
    move-object v7, v8

    .line 1919
    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_1e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1920
    const-wide/16 v10, 0x0

    if-eqz v7, :cond_e9

    .line 1921
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1922
    nop

    .line 1924
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1925
    :try_start_67
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v13, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v12, v13}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v12

    .line 1928
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_e6

    .line 1929
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 1930
    move v13, v9

    move-wide/from16 v23, v10

    :goto_79
    if-ge v13, v1, :cond_ac

    .line 1931
    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v14

    .line 1932
    :try_start_80
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v15, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_96

    .line 1934
    monitor-exit v14

    goto :goto_a5

    .line 1936
    :cond_96
    monitor-exit v14
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_a9

    .line 1937
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3, v8, v8}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    add-long v23, v23, v14

    .line 1930
    :goto_a5
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    goto :goto_79

    .line 1936
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v14
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0

    .line 1939
    :cond_ac
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1940
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1943
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v15

    .line 1944
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v17

    .line 1945
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v19

    .line 1946
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v21

    .line 1947
    const-wide/16 v12, 0x400

    mul-long v25, v15, v12

    mul-long v27, v17, v12

    mul-long v29, v19, v12

    mul-long v31, v21, v12

    mul-long v33, v23, v12

    invoke-static/range {v25 .. v34}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 1949
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual/range {v14 .. v24}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 1951
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_b2 .. :try_end_dc} :catchall_e0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_e9

    :catchall_e0
    move-exception v0

    :try_start_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1928
    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0

    .line 1954
    :cond_e9
    :goto_e9
    nop

    .line 1955
    new-array v1, v2, [J

    move v2, v9

    .line 1960
    :goto_ed
    nop

    .line 1962
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_f1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1963
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_13b

    .line 1964
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v1, :cond_105

    :goto_104
    goto :goto_12f

    :cond_105
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected pss of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes in "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1964
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 1967
    :goto_12f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1968
    monitor-exit v3
    :try_end_137
    .catchall {:try_start_f1 .. :try_end_137} :catchall_1dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1970
    :cond_13b
    :try_start_13b
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1971
    iget v14, v7, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 1972
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    .line 1973
    iget-wide v12, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 1974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1975
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_162

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v14, v4, :cond_162

    const-wide/16 v18, 0x3e8

    add-long v18, v12, v18

    cmp-long v4, v18, v16

    if-gez v4, :cond_162

    .line 1978
    iget v4, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_16a

    .line 1980
    :cond_162
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 1985
    nop

    .line 1986
    move-object v7, v8

    move v4, v9

    .line 1988
    :goto_16a
    monitor-exit v3
    :try_end_16b
    .catchall {:try_start_13b .. :try_end_16b} :catchall_1dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1989
    if-eqz v7, :cond_1d5

    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v16

    .line 1991
    invoke-static {v4, v1, v8}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v18

    .line 1992
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v20

    .line 1993
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_17f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1994
    cmp-long v22, v18, v10

    if-eqz v22, :cond_1c3

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_1c3

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v8, v14, :cond_1c3

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v8, v4, :cond_1c3

    iget-wide v10, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v4, v10, v12

    if-nez v4, :cond_1c3

    .line 1996
    add-int/lit8 v2, v2, 0x1

    .line 1997
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 1998
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    aget-wide v10, v1, v9

    const/4 v4, 0x1

    aget-wide v22, v1, v4

    const/4 v8, 0x2

    aget-wide v24, v1, v8

    sub-long v26, v20, v16

    .line 1999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 1998
    move-object v13, v7

    move v7, v15

    move-wide/from16 v15, v18

    move-wide/from16 v17, v10

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move/from16 v23, v7

    move-wide/from16 v24, v26

    move-wide/from16 v26, v32

    invoke-virtual/range {v12 .. v27}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V

    goto :goto_1ca

    .line 1994
    :cond_1c3
    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 2001
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v7}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2009
    :goto_1ca
    monitor-exit v3
    :try_end_1cb
    .catchall {:try_start_17f .. :try_end_1cb} :catchall_1cf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1d7

    :catchall_1cf
    move-exception v0

    :try_start_1d0
    monitor-exit v3
    :try_end_1d1
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1cf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1989
    :cond_1d5
    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 2011
    :goto_1d7
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    goto/16 :goto_ed

    .line 1988
    :catchall_1dc
    move-exception v0

    :try_start_1dd
    monitor-exit v3
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1919
    :catchall_1e2
    move-exception v0

    :try_start_1e3
    monitor-exit v1
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
