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
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 1993
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"  # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2012
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 46
    .param p1, "msg"  # Landroid/os/Message;

    .line 1996
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6b

    if-eq v0, v4, :cond_64

    if-eq v0, v3, :cond_10

    goto :goto_6a

    .line 2110
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2111
    .local v0, "nesting":I
    if-gtz v0, :cond_49

    .line 2112
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_36

    .line 2113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS activity start deferral interval ended; now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_36
    if-gez v0, :cond_6a

    .line 2117
    const-string v3, "ActivityManager"

    const-string v4, "Activity start nesting undercount!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_6a

    .line 2121
    :cond_49
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_6a

    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still deferring PSS, nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2106
    .end local v0  # "nesting":I
    :cond_64
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    .line 2107
    nop

    .line 2129
    :cond_6a
    :goto_6a
    return-void

    .line 1998
    :cond_6b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1999
    .local v6, "start":J
    const/4 v8, 0x0

    .line 2000
    .local v8, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2001
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_342

    const/4 v10, 0x0

    if-eqz v0, :cond_8d

    .line 2002
    :try_start_7d
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v10, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2003
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_88

    move-object v8, v0

    .end local v8  # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    goto :goto_8d

    .line 2005
    .end local v0  # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v8  # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :catchall_88
    move-exception v0

    move-wide/from16 v21, v6

    goto/16 :goto_345

    :cond_8d
    :goto_8d
    :try_start_8d
    monitor-exit v9
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_342

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2006
    const/4 v0, 0x0

    if-eqz v8, :cond_153

    .line 2007
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2008
    const-wide/16 v11, 0x0

    .line 2010
    .local v11, "nativeTotalPss":J
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v9

    .line 2011
    :try_start_a0
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v13, v14}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v13

    .line 2014
    .local v13, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_150

    .line 2015
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2016
    .local v14, "N":I
    const/4 v9, 0x0

    move-wide/from16 v26, v11

    .end local v11  # "nativeTotalPss":J
    .local v9, "j":I
    .local v26, "nativeTotalPss":J
    :goto_b2
    if-ge v9, v14, :cond_e2

    .line 2017
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v11

    .line 2018
    :try_start_b9
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v15, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v12

    if-ltz v12, :cond_cd

    .line 2020
    monitor-exit v11

    goto :goto_dc

    .line 2022
    :cond_cd
    monitor-exit v11
    :try_end_ce
    .catchall {:try_start_b9 .. :try_end_ce} :catchall_df

    .line 2023
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v11

    add-long v26, v26, v11

    .line 2016
    :goto_dc
    add-int/lit8 v9, v9, 0x1

    goto :goto_b2

    .line 2022
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v11
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    .line 2025
    .end local v9  # "j":I
    :cond_e2
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2026
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_e8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2027
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v11, :cond_111

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Collected native and kernel memory in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v4, v15, v6

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2027
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_111
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    .line 2030
    .local v4, "cachedKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v11

    .line 2031
    .local v11, "freeKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v15

    move-wide/from16 v28, v15

    .line 2032
    .local v28, "zramKb":J
    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v15

    move-wide/from16 v30, v15

    .line 2033
    .local v30, "kernelKb":J
    const-wide/16 v15, 0x400

    mul-long v32, v4, v15

    mul-long v34, v11, v15

    mul-long v36, v28, v15

    mul-long v38, v30, v15

    mul-long v40, v26, v15

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2035
    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v16, v4

    move-wide/from16 v18, v11

    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    move-wide/from16 v24, v26

    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2037
    .end local v4  # "cachedKb":J
    .end local v11  # "freeKb":J
    .end local v28  # "zramKb":J
    .end local v30  # "kernelKb":J
    monitor-exit v9
    :try_end_146
    .catchall {:try_start_e8 .. :try_end_146} :catchall_14a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_153

    :catchall_14a
    move-exception v0

    :try_start_14b
    monitor-exit v9
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2014
    .end local v13  # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v14  # "N":I
    .end local v26  # "nativeTotalPss":J
    .local v11, "nativeTotalPss":J
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v9
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0

    .line 2040
    .end local v11  # "nativeTotalPss":J
    :cond_153
    :goto_153
    const/4 v4, 0x0

    .line 2041
    .local v4, "num":I
    new-array v3, v3, [J

    .line 2046
    .local v3, "tmp":[J
    :goto_156
    const/4 v5, -0x1

    .line 2048
    .local v5, "pid":I
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_15a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2049
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_165
    .catchall {:try_start_15a .. :try_end_165} :catchall_334

    if-gtz v9, :cond_1ae

    .line 2050
    :try_start_167
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_171

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_19a

    :cond_171
    const-string v0, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collected pss of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " processes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2050
    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_19a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2054
    monitor-exit v11
    :try_end_1a2
    .catchall {:try_start_167 .. :try_end_1a2} :catchall_1a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2074
    :catchall_1a6
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    move-wide/from16 v21, v6

    goto/16 :goto_33b

    .line 2056
    :cond_1ae
    :try_start_1ae
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 2057
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v9, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2058
    .local v12, "procState":I
    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v39, v13

    .line 2059
    .local v39, "statType":I
    iget-wide v13, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2060
    .local v13, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 2061
    .local v15, "now":J
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1c6
    .catchall {:try_start_1ae .. :try_end_1c6} :catchall_334

    const-wide/16 v18, 0x3e8

    if-eqz v10, :cond_1da

    :try_start_1ca
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v10, :cond_1da

    add-long v20, v13, v18

    cmp-long v10, v20, v15

    if-gez v10, :cond_1da

    .line 2064
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1d6
    .catchall {:try_start_1ca .. :try_end_1d6} :catchall_1a6

    move v5, v10

    move-wide/from16 v21, v6

    goto :goto_225

    .line 2066
    :cond_1da
    :try_start_1da
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v10}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2067
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_1e1
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_334

    if-eqz v10, :cond_21f

    :try_start_1e3
    const-string v10, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped pss collection of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f7
    .catchall {:try_start_1e3 .. :try_end_1f7} :catchall_216

    add-long v18, v13, v18

    move v2, v5

    move-wide/from16 v21, v6

    .end local v5  # "pid":I
    .end local v6  # "start":J
    .local v2, "pid":I
    .local v21, "start":J
    sub-long v5, v18, v15

    :try_start_1fe
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms until safe"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20e
    .catchall {:try_start_1fe .. :try_end_20e} :catchall_20f

    goto :goto_222

    .line 2074
    .end local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12  # "procState":I
    .end local v13  # "lastPssTime":J
    .end local v15  # "now":J
    .end local v39  # "statType":I
    :catchall_20f
    move-exception v0

    move v5, v2

    move-object v10, v3

    move/from16 v25, v4

    goto/16 :goto_33b

    .end local v2  # "pid":I
    .end local v21  # "start":J
    .restart local v5  # "pid":I
    .restart local v6  # "start":J
    :catchall_216
    move-exception v0

    move v2, v5

    move-wide/from16 v21, v6

    move-object v10, v3

    move/from16 v25, v4

    .end local v5  # "pid":I
    .end local v6  # "start":J
    .restart local v2  # "pid":I
    .restart local v21  # "start":J
    goto/16 :goto_33b

    .line 2067
    .end local v2  # "pid":I
    .end local v21  # "start":J
    .restart local v5  # "pid":I
    .restart local v6  # "start":J
    .restart local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v12  # "procState":I
    .restart local v13  # "lastPssTime":J
    .restart local v15  # "now":J
    .restart local v39  # "statType":I
    :cond_21f
    move v2, v5

    move-wide/from16 v21, v6

    .line 2071
    .end local v5  # "pid":I
    .end local v6  # "start":J
    .restart local v2  # "pid":I
    .restart local v21  # "start":J
    :goto_222
    const/4 v9, 0x0

    .line 2072
    const/4 v0, 0x0

    .end local v2  # "pid":I
    .local v0, "pid":I
    move v5, v0

    .line 2074
    .end local v0  # "pid":I
    .end local v15  # "now":J
    .restart local v5  # "pid":I
    :goto_225
    :try_start_225
    monitor-exit v11
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_32f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2075
    if-eqz v9, :cond_31f

    .line 2076
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 2077
    .local v6, "startTime":J
    const/4 v0, 0x0

    invoke-static {v5, v3, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    .line 2078
    .local v10, "pss":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v15

    .line 2082
    .local v15, "endTime":J
    invoke-static {v5, v10, v11}, Lcom/android/server/am/AmsInjector;->setPss(IJ)V

    .line 2084
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_23e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_312

    .line 2085
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_293

    :try_start_247
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_293

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v0, v12, :cond_293

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_251
    .catchall {:try_start_247 .. :try_end_251} :catchall_28d

    if-ne v0, v5, :cond_293

    move-wide/from16 v18, v10

    .end local v10  # "pss":J
    .local v18, "pss":J
    :try_start_255
    iget-wide v10, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v0, v10, v13

    if-nez v0, :cond_283

    .line 2087
    add-int/lit8 v4, v4, 0x1

    .line 2088
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2089
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    aget-wide v33, v3, v10

    const/16 v17, 0x1

    aget-wide v35, v3, v17

    const/16 v23, 0x2

    aget-wide v37, v3, v23

    sub-long v40, v15, v6

    .line 2090
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 2089
    move-object/from16 v28, v0

    move-object/from16 v29, v9

    move/from16 v30, v12

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v43}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
    :try_end_280
    .catchall {:try_start_255 .. :try_end_280} :catchall_289

    move-object v10, v3

    goto/16 :goto_308

    .line 2085
    :cond_283
    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v23, 0x2

    goto :goto_29a

    .line 2100
    :catchall_289
    move-exception v0

    move-object v10, v3

    goto/16 :goto_318

    .end local v18  # "pss":J
    .restart local v10  # "pss":J
    :catchall_28d
    move-exception v0

    move-wide/from16 v18, v10

    move-object v10, v3

    .end local v10  # "pss":J
    .restart local v18  # "pss":J
    goto/16 :goto_318

    .line 2085
    .end local v18  # "pss":J
    .restart local v10  # "pss":J
    :cond_293
    move-wide/from16 v18, v10

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v23, 0x2

    .line 2092
    .end local v10  # "pss":J
    .restart local v18  # "pss":J
    :goto_29a
    :try_start_29a
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2093
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_303

    const-string v0, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped pss collection of "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_2b9
    .catchall {:try_start_29a .. :try_end_2b9} :catchall_30d

    if-nez v10, :cond_2be

    :try_start_2bb
    const-string v10, "NO_THREAD "
    :try_end_2bd
    .catchall {:try_start_2bb .. :try_end_2bd} :catchall_289

    goto :goto_2c0

    :cond_2be
    :try_start_2be
    const-string v10, ""

    :goto_2c0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_2c5
    .catchall {:try_start_2be .. :try_end_2c5} :catchall_30d

    if-eq v10, v5, :cond_2ca

    :try_start_2c7
    const-string v10, "PID_CHANGED "
    :try_end_2c9
    .catchall {:try_start_2c7 .. :try_end_2c9} :catchall_289

    goto :goto_2cc

    :cond_2ca
    :try_start_2ca
    const-string v10, ""

    :goto_2cc
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " initState="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " curState="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e6
    .catchall {:try_start_2ca .. :try_end_2e6} :catchall_30d

    .line 2098
    move-object v10, v3

    move/from16 v25, v4

    .end local v3  # "tmp":[J
    .end local v4  # "num":I
    .local v10, "tmp":[J
    .local v25, "num":I
    :try_start_2e9
    iget-wide v3, v9, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v3, v3, v13

    if-eqz v3, :cond_2f2

    const-string v3, "TIME_CHANGED"

    goto :goto_2f4

    :cond_2f2
    const-string v3, ""

    :goto_2f4
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2093
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fe
    .catchall {:try_start_2e9 .. :try_end_2fe} :catchall_2ff

    goto :goto_306

    .line 2100
    :catchall_2ff
    move-exception v0

    move/from16 v4, v25

    goto :goto_318

    .line 2093
    .end local v10  # "tmp":[J
    .end local v25  # "num":I
    .restart local v3  # "tmp":[J
    .restart local v4  # "num":I
    :cond_303
    move-object v10, v3

    move/from16 v25, v4

    .line 2100
    .end local v3  # "tmp":[J
    .end local v4  # "num":I
    .restart local v10  # "tmp":[J
    .restart local v25  # "num":I
    :goto_306
    move/from16 v4, v25

    .end local v25  # "num":I
    .restart local v4  # "num":I
    :goto_308
    :try_start_308
    monitor-exit v2
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_31d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_326

    .end local v10  # "tmp":[J
    .restart local v3  # "tmp":[J
    :catchall_30d
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    .end local v3  # "tmp":[J
    .end local v4  # "num":I
    .restart local v10  # "tmp":[J
    .restart local v25  # "num":I
    goto :goto_318

    .end local v18  # "pss":J
    .end local v25  # "num":I
    .restart local v3  # "tmp":[J
    .restart local v4  # "num":I
    .local v10, "pss":J
    :catchall_312
    move-exception v0

    move/from16 v25, v4

    move-wide/from16 v18, v10

    move-object v10, v3

    .end local v3  # "tmp":[J
    .local v10, "tmp":[J
    .restart local v18  # "pss":J
    :goto_318
    :try_start_318
    monitor-exit v2
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_31d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_31d
    move-exception v0

    goto :goto_318

    .line 2075
    .end local v6  # "startTime":J
    .end local v10  # "tmp":[J
    .end local v15  # "endTime":J
    .end local v18  # "pss":J
    .restart local v3  # "tmp":[J
    :cond_31f
    move-object v10, v3

    move/from16 v25, v4

    const/16 v17, 0x1

    const/16 v23, 0x2

    .line 2102
    .end local v3  # "tmp":[J
    .end local v5  # "pid":I
    .end local v9  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12  # "procState":I
    .end local v13  # "lastPssTime":J
    .end local v39  # "statType":I
    .restart local v10  # "tmp":[J
    :goto_326
    move-object/from16 v2, p1

    move-object v3, v10

    move-wide/from16 v6, v21

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto/16 :goto_156

    .line 2074
    .end local v10  # "tmp":[J
    .restart local v3  # "tmp":[J
    .restart local v5  # "pid":I
    :catchall_32f
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    .end local v3  # "tmp":[J
    .end local v4  # "num":I
    .restart local v10  # "tmp":[J
    .restart local v25  # "num":I
    goto :goto_33b

    .end local v10  # "tmp":[J
    .end local v21  # "start":J
    .end local v25  # "num":I
    .restart local v3  # "tmp":[J
    .restart local v4  # "num":I
    .local v6, "start":J
    :catchall_334
    move-exception v0

    move-object v10, v3

    move/from16 v25, v4

    move v2, v5

    move-wide/from16 v21, v6

    .end local v3  # "tmp":[J
    .end local v4  # "num":I
    .end local v6  # "start":J
    .restart local v10  # "tmp":[J
    .restart local v21  # "start":J
    .restart local v25  # "num":I
    :goto_33b
    :try_start_33b
    monitor-exit v11
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_340

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_340
    move-exception v0

    goto :goto_33b

    .line 2005
    .end local v5  # "pid":I
    .end local v10  # "tmp":[J
    .end local v21  # "start":J
    .end local v25  # "num":I
    .restart local v6  # "start":J
    :catchall_342
    move-exception v0

    move-wide/from16 v21, v6

    .end local v6  # "start":J
    .restart local v21  # "start":J
    :goto_345
    :try_start_345
    monitor-exit v9
    :try_end_346
    .catchall {:try_start_345 .. :try_end_346} :catchall_34a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_34a
    move-exception v0

    goto :goto_345
.end method
