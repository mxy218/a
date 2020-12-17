.class final Lcom/android/server/am/AppCompactor$MemCompactionHandler;
.super Landroid/os/Handler;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    .line 531
    iget-object p1, p1, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppCompactor;Lcom/android/server/am/AppCompactor$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/am/AppCompactor;
    .param p2, "x1"  # Lcom/android/server/am/AppCompactor$1;

    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/am/AppCompactor$MemCompactionHandler;-><init>(Lcom/android/server/am/AppCompactor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 63
    .param p1, "msg"  # Landroid/os/Message;

    .line 536
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1f

    if-eq v0, v5, :cond_10

    goto/16 :goto_651

    .line 770
    :cond_10
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 771
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1800(Lcom/android/server/am/AppCompactor;)V

    .line 772
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_651

    .line 538
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 546
    .local v7, "start":J
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 547
    .local v15, "lastOomAdj":I
    iget v13, v2, Landroid/os/Message;->arg2:I

    .line 548
    .local v13, "procState":I
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 549
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1100(Lcom/android/server/am/AppCompactor;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    .line 551
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    move v12, v0

    .line 552
    .local v12, "pendingAction":I
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move v11, v0

    .line 553
    .local v11, "pid":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 557
    .local v40, "name":Ljava/lang/String;
    if-eq v12, v6, :cond_51

    if-ne v12, v5, :cond_4e

    goto :goto_51

    :cond_4e
    move-object/from16 v4, v40

    goto :goto_8b

    :cond_51
    :goto_51
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->setAdj:I
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_652

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_89

    .line 560
    :try_start_57
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_79

    .line 561
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction as process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    .end local v40  # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is now perceptible."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 560
    .end local v4  # "name":Ljava/lang/String;
    .restart local v40  # "name":Ljava/lang/String;
    :cond_79
    move-object/from16 v4, v40

    .line 565
    .end local v40  # "name":Ljava/lang/String;
    .restart local v4  # "name":Ljava/lang/String;
    :goto_7b
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_57 .. :try_end_7c} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 573
    .end local v4  # "name":Ljava/lang/String;
    .end local v11  # "pid":I
    .end local v12  # "pendingAction":I
    .end local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_80
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    goto/16 :goto_659

    .line 557
    .restart local v11  # "pid":I
    .restart local v12  # "pendingAction":I
    .restart local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v40  # "name":Ljava/lang/String;
    :cond_89
    move-object/from16 v4, v40

    .line 568
    .end local v40  # "name":Ljava/lang/String;
    .restart local v4  # "name":Ljava/lang/String;
    :goto_8b
    :try_start_8b
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    move v3, v0

    .line 569
    .local v3, "lastCompactAction":I
    iget-wide v5, v14, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 572
    .local v5, "lastCompactTime":J
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v40, v0

    .line 573
    .local v40, "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    monitor-exit v9
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_652

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 575
    if-nez v11, :cond_a9

    .line 577
    return-void

    .line 587
    :cond_a9
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_20a

    .line 588
    const/4 v0, 0x1

    if-ne v12, v0, :cond_11e

    .line 589
    if-ne v3, v0, :cond_c4

    sub-long v21, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    cmp-long v0, v21, v9

    if-ltz v0, :cond_bf

    goto :goto_c4

    :cond_bf
    move-object/from16 v22, v14

    move/from16 v21, v15

    goto :goto_d5

    :cond_c4
    :goto_c4
    const/4 v0, 0x2

    if-ne v3, v0, :cond_118

    sub-long v9, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "lastOomAdj":I
    .local v21, "lastOomAdj":I
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    iget-wide v14, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    cmp-long v0, v9, v14

    if-gez v0, :cond_20e

    .line 594
    :goto_d5
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_117

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping some compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_117
    return-void

    .line 589
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15  # "lastOomAdj":I
    :cond_118
    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "lastOomAdj":I
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_20e

    .line 602
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15  # "lastOomAdj":I
    :cond_11e
    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "lastOomAdj":I
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x2

    if-ne v12, v0, :cond_182

    .line 603
    const/4 v9, 0x1

    if-ne v3, v9, :cond_132

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    cmp-long v9, v9, v14

    if-ltz v9, :cond_13f

    :cond_132
    const/4 v0, 0x2

    if-ne v3, v0, :cond_20e

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_20e

    .line 608
    :cond_13f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_181

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_181
    return-void

    .line 616
    :cond_182
    const/4 v9, 0x3

    if-ne v12, v9, :cond_1c6

    .line 617
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_20e

    .line 618
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1c5

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping persistent compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1c5
    return-void

    .line 625
    :cond_1c6
    const/4 v9, 0x4

    if-ne v12, v9, :cond_20e

    .line 626
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_20e

    .line 627
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_209

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bfgs compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_209
    return-void

    .line 587
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15  # "lastOomAdj":I
    :cond_20a
    move-object/from16 v22, v14

    move/from16 v21, v15

    .line 637
    .end local v14  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "lastOomAdj":I
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_20e
    :goto_20e
    const/4 v9, 0x1

    if-eq v12, v9, :cond_224

    const/4 v0, 0x2

    if-eq v12, v0, :cond_21e

    const/4 v9, 0x3

    if-eq v12, v9, :cond_21e

    const/4 v9, 0x4

    if-eq v12, v9, :cond_21e

    .line 648
    const-string v9, ""

    move-object v15, v9

    .local v9, "action":Ljava/lang/String;
    goto :goto_229

    .line 645
    .end local v9  # "action":Ljava/lang/String;
    :cond_21e
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    .line 646
    .restart local v9  # "action":Ljava/lang/String;
    move-object v15, v9

    goto :goto_229

    .line 639
    .end local v9  # "action":Ljava/lang/String;
    :cond_224
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    .line 640
    .restart local v9  # "action":Ljava/lang/String;
    move-object v15, v9

    .line 652
    .end local v9  # "action":Ljava/lang/String;
    .local v15, "action":Ljava/lang/String;
    :goto_229
    const-string v9, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    .line 653
    return-void

    .line 656
    :cond_232
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_263

    .line 657
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_262

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for process "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; proc state is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_262
    return-void

    .line 664
    :cond_263
    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v41

    .line 665
    .local v41, "rssBefore":[J
    const/4 v0, 0x2

    aget-wide v9, v41, v0

    .line 667
    .local v9, "anonRssBefore":J
    const/4 v14, 0x0

    aget-wide v25, v41, v14

    const-wide/16 v19, 0x0

    cmp-long v14, v25, v19

    if-nez v14, :cond_2a7

    const/4 v14, 0x1

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_2a7

    aget-wide v25, v41, v0

    cmp-long v14, v25, v19

    if-nez v14, :cond_2a7

    const/4 v14, 0x3

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_2a7

    .line 669
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_2a6

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping compaction forprocess "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " with no memory usage. Dead?"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ActivityManager"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_2a6
    return-void

    .line 676
    :cond_2a7
    const-string v14, "all"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2be

    const-string v14, "anon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b8

    goto :goto_2be

    :cond_2b8
    move-wide/from16 v28, v9

    move/from16 v25, v13

    goto/16 :goto_369

    .line 677
    :cond_2be
    :goto_2be
    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-lez v0, :cond_2fc

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move/from16 v25, v13

    .end local v13  # "procState":I
    .local v25, "procState":I
    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    cmp-long v0, v9, v13

    if-gez v0, :cond_300

    .line 679
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_2fb

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping full compaction for process "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; anon RSS is too small: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "KB."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ActivityManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2fb
    return-void

    .line 677
    .end local v25  # "procState":I
    .restart local v13  # "procState":I
    :cond_2fc
    move-object/from16 v1, p0

    move/from16 v25, v13

    .line 687
    .end local v13  # "procState":I
    .restart local v25  # "procState":I
    :cond_300
    if-eqz v40, :cond_367

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v13, v19

    if-lez v0, :cond_367

    .line 688
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/AppCompactor$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v13

    .line 689
    .local v13, "lastRss":[J
    const/4 v0, 0x1

    aget-wide v19, v41, v0

    aget-wide v26, v13, v0

    sub-long v19, v19, v26

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    const/4 v0, 0x2

    aget-wide v26, v41, v0

    aget-wide v28, v13, v0

    sub-long v26, v26, v28

    .line 690
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    add-long v19, v19, v26

    const/4 v14, 0x3

    aget-wide v26, v41, v14

    aget-wide v28, v13, v14

    sub-long v26, v26, v28

    .line 691
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    move-wide/from16 v28, v9

    .end local v9  # "anonRssBefore":J
    .local v28, "anonRssBefore":J
    add-long v9, v19, v26

    .line 692
    .local v9, "absDelta":J
    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v9, v0

    if-gtz v0, :cond_369

    .line 693
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_366

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping full compaction for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; abs delta is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "KB."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_366
    return-void

    .line 687
    .end local v13  # "lastRss":[J
    .end local v28  # "anonRssBefore":J
    .local v9, "anonRssBefore":J
    :cond_367
    move-wide/from16 v28, v9

    .line 705
    .end local v9  # "anonRssBefore":J
    .restart local v28  # "anonRssBefore":J
    :cond_369
    :goto_369
    const/4 v0, 0x1

    if-eq v12, v0, :cond_390

    const/4 v0, 0x2

    if-eq v12, v0, :cond_388

    const/4 v1, 0x3

    if-eq v12, v1, :cond_380

    const/4 v1, 0x4

    if-eq v12, v1, :cond_378

    move-object/from16 v1, p0

    goto :goto_398

    .line 716
    :cond_378
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1608(Lcom/android/server/am/AppCompactor;)I

    .line 717
    goto :goto_398

    .line 713
    :cond_380
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1508(Lcom/android/server/am/AppCompactor;)I

    .line 714
    goto :goto_398

    .line 710
    :cond_388
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1408(Lcom/android/server/am/AppCompactor;)I

    .line 711
    goto :goto_398

    .line 707
    :cond_390
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1308(Lcom/android/server/am/AppCompactor;)I

    .line 708
    nop

    .line 723
    :goto_398
    :try_start_398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3a2} :catch_63b
    .catchall {:try_start_398 .. :try_end_3a2} :catchall_627

    .line 724
    const/4 v10, 0x1

    if-ne v12, v10, :cond_3cb

    :try_start_3a5
    const-string/jumbo v10, "some"
    :try_end_3a8
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3a8} :catch_3b9
    .catchall {:try_start_3a5 .. :try_end_3a8} :catchall_3a9

    goto :goto_3cd

    .line 765
    :catchall_3a9
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    goto/16 :goto_635

    .line 762
    :catch_3b9
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    goto/16 :goto_64b

    .line 724
    :cond_3cb
    :try_start_3cb
    const-string v10, "full"

    :goto_3cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_3cb .. :try_end_3dc} :catch_63b
    .catchall {:try_start_3cb .. :try_end_3dc} :catchall_627

    .line 723
    const-wide/16 v13, 0x40

    :try_start_3de
    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e1
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_3e1} :catch_617
    .catchall {:try_start_3de .. :try_end_3e1} :catchall_627

    .line 726
    :try_start_3e1
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v9

    move-wide/from16 v42, v9

    .line 727
    .local v42, "zramFreeKbBefore":J
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/reclaim"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v9

    .line 728
    .local v13, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 729
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 730
    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v9

    move-object v14, v9

    .line 731
    .local v14, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 732
    .local v9, "end":J
    sub-long v44, v9, v7

    .line 733
    .local v44, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v19

    move-wide/from16 v46, v19

    .line 734
    .local v46, "zramFreeKbAfter":J
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v18, 0x0

    aput-object v20, v0, v18

    const/16 v16, 0x1

    aput-object v4, v0, v16

    const/16 v17, 0x2

    aput-object v15, v0, v17

    aget-wide v26, v41, v18

    .line 735
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v24, 0x3

    aput-object v20, v0, v24

    const/16 v16, 0x1

    aget-wide v26, v41, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v23, 0x4

    aput-object v20, v0, v23

    const/16 v20, 0x5

    const/16 v17, 0x2

    aget-wide v26, v41, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x6

    const/16 v23, 0x3

    aget-wide v26, v41, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x7

    const/16 v18, 0x0

    aget-wide v26, v14, v18

    aget-wide v30, v41, v18

    sub-long v26, v26, v30

    .line 736
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x8

    const/16 v16, 0x1

    aget-wide v26, v14, v16

    aget-wide v30, v41, v16

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x9

    const/16 v17, 0x2

    aget-wide v26, v14, v17

    aget-wide v30, v41, v17

    sub-long v26, v26, v30

    .line 737
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xa

    const/16 v23, 0x3

    aget-wide v26, v14, v23

    aget-wide v30, v41, v23

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xb

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xc

    .line 738
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x10

    .line 739
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x11

    sub-long v26, v46, v42

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    .line 734
    const/16 v2, 0x756f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 744
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1700(Lcom/android/server/am/AppCompactor;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget v2, v2, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F
    :try_end_4ed
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_4ed} :catch_63b
    .catchall {:try_start_3e1 .. :try_end_4ed} :catchall_627

    cmpg-float v0, v0, v2

    if-gez v0, :cond_581

    .line 745
    const/16 v2, 0x73

    const/4 v0, 0x0

    :try_start_4f4
    aget-wide v19, v41, v0

    const/4 v0, 0x1

    aget-wide v26, v41, v0

    const/4 v0, 0x2

    aget-wide v30, v41, v0

    const/16 v17, 0x3

    aget-wide v32, v41, v17

    const/16 v17, 0x0

    aget-wide v34, v14, v17

    const/16 v16, 0x1

    aget-wide v36, v14, v16

    const/4 v0, 0x2

    aget-wide v38, v14, v0

    const/4 v0, 0x3

    aget-wide v48, v14, v0

    .line 749
    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v0
    :try_end_512
    .catch Ljava/lang/Exception; {:try_start_4f4 .. :try_end_512} :catch_56f
    .catchall {:try_start_4f4 .. :try_end_512} :catchall_55f

    .line 745
    move-wide/from16 v52, v7

    move-wide v7, v9

    move-wide/from16 v50, v28

    .end local v9  # "end":J
    .end local v28  # "anonRssBefore":J
    .local v7, "end":J
    .local v50, "anonRssBefore":J
    .local v52, "start":J
    move v9, v2

    move v10, v11

    move v2, v11

    .end local v11  # "pid":I
    .local v2, "pid":I
    move-object v11, v4

    move/from16 v54, v12

    .end local v12  # "pendingAction":I
    .local v54, "pendingAction":I
    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v56, v22

    move/from16 v55, v25

    .end local v13  # "fos":Ljava/io/FileOutputStream;
    .end local v14  # "rssAfter":[J
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .local v55, "procState":I
    .local v56, "proc":Lcom/android/server/am/ProcessRecord;
    .local v57, "fos":Ljava/io/FileOutputStream;
    .local v58, "rssAfter":[J
    move-wide/from16 v13, v19

    move-object/from16 v60, v15

    move/from16 v59, v21

    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .local v59, "lastOomAdj":I
    .local v60, "action":Ljava/lang/String;
    move-wide/from16 v15, v26

    move-wide/from16 v17, v30

    move-wide/from16 v19, v32

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move-wide/from16 v25, v38

    move-wide/from16 v27, v48

    move-wide/from16 v29, v44

    move/from16 v31, v3

    move-wide/from16 v32, v5

    move/from16 v34, v59

    move/from16 v35, v0

    move-wide/from16 v36, v42

    move-wide/from16 v38, v46

    :try_start_547
    invoke-static/range {v9 .. v39}, Landroid/util/StatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)I
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_547 .. :try_end_54a} :catch_554
    .catchall {:try_start_547 .. :try_end_54a} :catchall_54b

    goto :goto_595

    .line 765
    .end local v7  # "end":J
    .end local v42  # "zramFreeKbBefore":J
    .end local v44  # "time":J
    .end local v46  # "zramFreeKbAfter":J
    .end local v57  # "fos":Ljava/io/FileOutputStream;
    .end local v58  # "rssAfter":[J
    :catchall_54b
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    goto/16 :goto_635

    .line 762
    :catch_554
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto/16 :goto_64b

    .line 765
    .end local v2  # "pid":I
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v54  # "pendingAction":I
    .end local v55  # "procState":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59  # "lastOomAdj":I
    .end local v60  # "action":Ljava/lang/String;
    .local v7, "start":J
    .restart local v11  # "pid":I
    .restart local v12  # "pendingAction":I
    .restart local v15  # "action":Ljava/lang/String;
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "procState":I
    .restart local v28  # "anonRssBefore":J
    :catchall_55f
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    .end local v7  # "start":J
    .end local v11  # "pid":I
    .end local v12  # "pendingAction":I
    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .end local v28  # "anonRssBefore":J
    .restart local v2  # "pid":I
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v54  # "pendingAction":I
    .restart local v55  # "procState":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v59  # "lastOomAdj":I
    .restart local v60  # "action":Ljava/lang/String;
    goto/16 :goto_635

    .line 762
    .end local v2  # "pid":I
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v54  # "pendingAction":I
    .end local v55  # "procState":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59  # "lastOomAdj":I
    .end local v60  # "action":Ljava/lang/String;
    .restart local v7  # "start":J
    .restart local v11  # "pid":I
    .restart local v12  # "pendingAction":I
    .restart local v15  # "action":Ljava/lang/String;
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "procState":I
    .restart local v28  # "anonRssBefore":J
    :catch_56f
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    const-wide/16 v7, 0x40

    .end local v7  # "start":J
    .end local v11  # "pid":I
    .end local v12  # "pendingAction":I
    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .end local v28  # "anonRssBefore":J
    .restart local v2  # "pid":I
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v54  # "pendingAction":I
    .restart local v55  # "procState":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v59  # "lastOomAdj":I
    .restart local v60  # "action":Ljava/lang/String;
    goto/16 :goto_64b

    .line 744
    .end local v2  # "pid":I
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v54  # "pendingAction":I
    .end local v55  # "procState":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59  # "lastOomAdj":I
    .end local v60  # "action":Ljava/lang/String;
    .restart local v7  # "start":J
    .restart local v9  # "end":J
    .restart local v11  # "pid":I
    .restart local v12  # "pendingAction":I
    .restart local v13  # "fos":Ljava/io/FileOutputStream;
    .restart local v14  # "rssAfter":[J
    .restart local v15  # "action":Ljava/lang/String;
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "procState":I
    .restart local v28  # "anonRssBefore":J
    .restart local v42  # "zramFreeKbBefore":J
    .restart local v44  # "time":J
    .restart local v46  # "zramFreeKbAfter":J
    :cond_581
    move-wide/from16 v52, v7

    move-wide v7, v9

    move v2, v11

    move/from16 v54, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v60, v15

    move/from16 v59, v21

    move-object/from16 v56, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    .line 753
    .end local v9  # "end":J
    .end local v11  # "pid":I
    .end local v12  # "pendingAction":I
    .end local v13  # "fos":Ljava/io/FileOutputStream;
    .end local v14  # "rssAfter":[J
    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .end local v28  # "anonRssBefore":J
    .restart local v2  # "pid":I
    .local v7, "end":J
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v54  # "pendingAction":I
    .restart local v55  # "procState":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57  # "fos":Ljava/io/FileOutputStream;
    .restart local v58  # "rssAfter":[J
    .restart local v59  # "lastOomAdj":I
    .restart local v60  # "action":Ljava/lang/String;
    :goto_595
    :try_start_595
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_595 .. :try_end_59c} :catch_60d
    .catchall {:try_start_595 .. :try_end_59c} :catchall_605

    :try_start_59c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_59f
    .catchall {:try_start_59c .. :try_end_59f} :catchall_5ef

    .line 754
    move-object/from16 v10, v56

    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_5a1
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J
    :try_end_5a3
    .catchall {:try_start_5a1 .. :try_end_5a3} :catchall_5e7

    .line 755
    move/from16 v11, v54

    .end local v54  # "pendingAction":I
    .local v11, "pendingAction":I
    :try_start_5a5
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 756
    monitor-exit v9
    :try_end_5a8
    .catchall {:try_start_5a5 .. :try_end_5a8} :catchall_5e1

    :try_start_5a8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 758
    const-string v0, "all"
    :try_end_5ad
    .catch Ljava/lang/Exception; {:try_start_5a8 .. :try_end_5ad} :catch_5da
    .catchall {:try_start_5a8 .. :try_end_5ad} :catchall_5d5

    move-object/from16 v12, v60

    .end local v60  # "action":Ljava/lang/String;
    .local v12, "action":Ljava/lang/String;
    :try_start_5af
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5bd

    const-string v0, "anon"

    .line 759
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d1

    .line 760
    :cond_5bd
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v14, v58

    .end local v58  # "rssAfter":[J
    .restart local v14  # "rssAfter":[J
    invoke-direct {v13, v14}, Lcom/android/server/am/AppCompactor$LastCompactionStats;-><init>([J)V

    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d1
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5d1} :catch_5ff
    .catchall {:try_start_5af .. :try_end_5d1} :catchall_5fd

    .line 765
    .end local v7  # "end":J
    .end local v14  # "rssAfter":[J
    .end local v42  # "zramFreeKbBefore":J
    .end local v44  # "time":J
    .end local v46  # "zramFreeKbAfter":J
    .end local v57  # "fos":Ljava/io/FileOutputStream;
    :cond_5d1
    const-wide/16 v7, 0x40

    goto/16 :goto_64c

    .end local v12  # "action":Ljava/lang/String;
    .restart local v60  # "action":Ljava/lang/String;
    :catchall_5d5
    move-exception v0

    move-object/from16 v12, v60

    .end local v60  # "action":Ljava/lang/String;
    .restart local v12  # "action":Ljava/lang/String;
    goto/16 :goto_635

    .line 762
    .end local v12  # "action":Ljava/lang/String;
    .restart local v60  # "action":Ljava/lang/String;
    :catch_5da
    move-exception v0

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v60  # "action":Ljava/lang/String;
    .restart local v12  # "action":Ljava/lang/String;
    goto/16 :goto_64b

    .line 756
    .end local v12  # "action":Ljava/lang/String;
    .restart local v7  # "end":J
    .restart local v42  # "zramFreeKbBefore":J
    .restart local v44  # "time":J
    .restart local v46  # "zramFreeKbAfter":J
    .restart local v57  # "fos":Ljava/io/FileOutputStream;
    .restart local v58  # "rssAfter":[J
    .restart local v60  # "action":Ljava/lang/String;
    :catchall_5e1
    move-exception v0

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v58  # "rssAfter":[J
    .end local v60  # "action":Ljava/lang/String;
    .restart local v12  # "action":Ljava/lang/String;
    .restart local v14  # "rssAfter":[J
    goto :goto_5f8

    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .end local v14  # "rssAfter":[J
    .restart local v54  # "pendingAction":I
    .restart local v58  # "rssAfter":[J
    .restart local v60  # "action":Ljava/lang/String;
    :catchall_5e7
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v54  # "pendingAction":I
    .end local v58  # "rssAfter":[J
    .end local v60  # "action":Ljava/lang/String;
    .restart local v11  # "pendingAction":I
    .restart local v12  # "action":Ljava/lang/String;
    .restart local v14  # "rssAfter":[J
    goto :goto_5f8

    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .end local v14  # "rssAfter":[J
    .restart local v54  # "pendingAction":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v58  # "rssAfter":[J
    .restart local v60  # "action":Ljava/lang/String;
    :catchall_5ef
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v54  # "pendingAction":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v58  # "rssAfter":[J
    .end local v60  # "action":Ljava/lang/String;
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "pendingAction":I
    .restart local v12  # "action":Ljava/lang/String;
    .restart local v14  # "rssAfter":[J
    :goto_5f8
    :try_start_5f8
    monitor-exit v9
    :try_end_5f9
    .catchall {:try_start_5f8 .. :try_end_5f9} :catchall_603

    :try_start_5f9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v2  # "pid":I
    .end local v3  # "lastCompactAction":I
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "lastCompactTime":J
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .end local v40  # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .end local v41  # "rssBefore":[J
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v55  # "procState":I
    .end local v59  # "lastOomAdj":I
    .end local p0  # "this":Lcom/android/server/am/AppCompactor$MemCompactionHandler;
    .end local p1  # "msg":Landroid/os/Message;
    throw v0
    :try_end_5fd
    .catch Ljava/lang/Exception; {:try_start_5f9 .. :try_end_5fd} :catch_5ff
    .catchall {:try_start_5f9 .. :try_end_5fd} :catchall_5fd

    .line 765
    .end local v7  # "end":J
    .end local v14  # "rssAfter":[J
    .end local v42  # "zramFreeKbBefore":J
    .end local v44  # "time":J
    .end local v46  # "zramFreeKbAfter":J
    .end local v57  # "fos":Ljava/io/FileOutputStream;
    .restart local v2  # "pid":I
    .restart local v3  # "lastCompactAction":I
    .restart local v4  # "name":Ljava/lang/String;
    .restart local v5  # "lastCompactTime":J
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "pendingAction":I
    .restart local v12  # "action":Ljava/lang/String;
    .restart local v40  # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .restart local v41  # "rssBefore":[J
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v55  # "procState":I
    .restart local v59  # "lastOomAdj":I
    .restart local p0  # "this":Lcom/android/server/am/AppCompactor$MemCompactionHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_5fd
    move-exception v0

    goto :goto_635

    .line 762
    :catch_5ff
    move-exception v0

    const-wide/16 v7, 0x40

    goto :goto_64b

    .line 756
    .restart local v7  # "end":J
    .restart local v14  # "rssAfter":[J
    .restart local v42  # "zramFreeKbBefore":J
    .restart local v44  # "time":J
    .restart local v46  # "zramFreeKbAfter":J
    .restart local v57  # "fos":Ljava/io/FileOutputStream;
    :catchall_603
    move-exception v0

    goto :goto_5f8

    .line 765
    .end local v7  # "end":J
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .end local v14  # "rssAfter":[J
    .end local v42  # "zramFreeKbBefore":J
    .end local v44  # "time":J
    .end local v46  # "zramFreeKbAfter":J
    .end local v57  # "fos":Ljava/io/FileOutputStream;
    .restart local v54  # "pendingAction":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60  # "action":Ljava/lang/String;
    :catchall_605
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    .end local v54  # "pendingAction":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60  # "action":Ljava/lang/String;
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "pendingAction":I
    .restart local v12  # "action":Ljava/lang/String;
    goto :goto_635

    .line 762
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .restart local v54  # "pendingAction":I
    .restart local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60  # "action":Ljava/lang/String;
    :catch_60d
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v54  # "pendingAction":I
    .end local v56  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60  # "action":Ljava/lang/String;
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "pendingAction":I
    .restart local v12  # "action":Ljava/lang/String;
    goto :goto_64b

    .end local v2  # "pid":I
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v55  # "procState":I
    .end local v59  # "lastOomAdj":I
    .local v7, "start":J
    .local v11, "pid":I
    .local v12, "pendingAction":I
    .restart local v15  # "action":Ljava/lang/String;
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "procState":I
    .restart local v28  # "anonRssBefore":J
    :catch_617
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move-wide v7, v13

    goto :goto_64b

    .line 765
    :catchall_627
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    .end local v7  # "start":J
    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .end local v28  # "anonRssBefore":J
    .restart local v2  # "pid":I
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v55  # "procState":I
    .restart local v59  # "lastOomAdj":I
    :goto_635
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 762
    .end local v2  # "pid":I
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v55  # "procState":I
    .end local v59  # "lastOomAdj":I
    .restart local v7  # "start":J
    .local v11, "pid":I
    .local v12, "pendingAction":I
    .restart local v15  # "action":Ljava/lang/String;
    .restart local v21  # "lastOomAdj":I
    .restart local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "procState":I
    .restart local v28  # "anonRssBefore":J
    :catch_63b
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    .line 765
    .end local v7  # "start":J
    .end local v15  # "action":Ljava/lang/String;
    .end local v21  # "lastOomAdj":I
    .end local v22  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "procState":I
    .end local v28  # "anonRssBefore":J
    .restart local v2  # "pid":I
    .restart local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50  # "anonRssBefore":J
    .restart local v52  # "start":J
    .restart local v55  # "procState":I
    .restart local v59  # "lastOomAdj":I
    :goto_64b
    nop

    :goto_64c
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 766
    nop

    .line 767
    nop

    .line 776
    .end local v2  # "pid":I
    .end local v3  # "lastCompactAction":I
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "lastCompactTime":J
    .end local v10  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "pendingAction":I
    .end local v12  # "action":Ljava/lang/String;
    .end local v40  # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .end local v41  # "rssBefore":[J
    .end local v50  # "anonRssBefore":J
    .end local v52  # "start":J
    .end local v55  # "procState":I
    .end local v59  # "lastOomAdj":I
    :goto_651
    return-void

    .line 573
    .restart local v7  # "start":J
    .local v13, "procState":I
    .local v15, "lastOomAdj":I
    :catchall_652
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    .end local v7  # "start":J
    .end local v13  # "procState":I
    .end local v15  # "lastOomAdj":I
    .restart local v52  # "start":J
    .restart local v55  # "procState":I
    .restart local v59  # "lastOomAdj":I
    :goto_659
    :try_start_659
    monitor-exit v9
    :try_end_65a
    .catchall {:try_start_659 .. :try_end_65a} :catchall_65e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_65e
    move-exception v0

    goto :goto_659
.end method
