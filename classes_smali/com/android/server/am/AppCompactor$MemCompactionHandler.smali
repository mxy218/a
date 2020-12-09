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

    .line 523
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    .line 524
    iget-object p1, p1, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppCompactor;Lcom/android/server/am/AppCompactor$1;)V
    .registers 3

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/am/AppCompactor$MemCompactionHandler;-><init>(Lcom/android/server/am/AppCompactor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 49

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1f

    if-eq v2, v5, :cond_10

    goto/16 :goto_388

    .line 763
    :cond_10
    const-string v1, "compactSystem"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 764
    iget-object v0, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1800(Lcom/android/server/am/AppCompactor;)V

    .line 765
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_388

    .line 531
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 539
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 540
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 541
    iget-object v9, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 542
    iget-object v10, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v10}, Lcom/android/server/am/AppCompactor;->access$1100(Lcom/android/server/am/AppCompactor;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 544
    iget v13, v15, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 545
    iget v14, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 546
    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 550
    if-eq v13, v6, :cond_49

    if-ne v13, v5, :cond_54

    :cond_49
    iget v10, v15, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v3, 0xc8

    if-gt v10, v3, :cond_54

    .line 558
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_389

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 561
    :cond_54
    :try_start_54
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 562
    move-object v4, v12

    iget-wide v11, v15, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 565
    iget-object v10, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v10}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    .line 566
    monitor-exit v9
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_389

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 568
    if-nez v14, :cond_70

    .line 570
    return-void

    .line 580
    :cond_70
    const-wide/16 v9, 0x0

    cmp-long v17, v11, v9

    if-eqz v17, :cond_da

    .line 581
    if-ne v13, v6, :cond_9c

    .line 582
    if-ne v3, v6, :cond_87

    sub-long v20, v7, v11

    iget-object v9, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-wide/from16 v23, v7

    iget-wide v6, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    cmp-long v6, v20, v6

    if-ltz v6, :cond_98

    goto :goto_89

    :cond_87
    move-wide/from16 v23, v7

    :goto_89
    const/4 v6, 0x2

    if-ne v3, v6, :cond_99

    sub-long v7, v23, v11

    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-wide/from16 v20, v11

    iget-wide v10, v6, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    cmp-long v6, v7, v10

    if-gez v6, :cond_de

    .line 593
    :cond_98
    return-void

    .line 582
    :cond_99
    move-wide/from16 v20, v11

    goto :goto_de

    .line 595
    :cond_9c
    move-wide/from16 v23, v7

    move-wide/from16 v20, v11

    const/4 v6, 0x2

    if-ne v13, v6, :cond_be

    .line 596
    const/4 v6, 0x1

    if-ne v3, v6, :cond_b0

    sub-long v7, v23, v20

    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v10, v6, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    cmp-long v6, v7, v10

    if-ltz v6, :cond_bd

    :cond_b0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_de

    sub-long v7, v23, v20

    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v10, v6, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    cmp-long v6, v7, v10

    if-gez v6, :cond_de

    .line 607
    :cond_bd
    return-void

    .line 609
    :cond_be
    const/4 v6, 0x3

    if-ne v13, v6, :cond_cc

    .line 610
    sub-long v7, v23, v20

    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v10, v6, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    cmp-long v6, v7, v10

    if-gez v6, :cond_de

    .line 616
    return-void

    .line 618
    :cond_cc
    const/4 v6, 0x4

    if-ne v13, v6, :cond_de

    .line 619
    sub-long v7, v23, v20

    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v10, v6, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    cmp-long v6, v7, v10

    if-gez v6, :cond_de

    .line 625
    return-void

    .line 580
    :cond_da
    move-wide/from16 v23, v7

    move-wide/from16 v20, v11

    .line 630
    :cond_de
    :goto_de
    const/4 v6, 0x1

    if-eq v13, v6, :cond_f2

    const/4 v6, 0x2

    if-eq v13, v6, :cond_ed

    const/4 v6, 0x3

    if-eq v13, v6, :cond_ed

    const/4 v6, 0x4

    if-eq v13, v6, :cond_ed

    .line 641
    const-string v6, ""

    goto :goto_f7

    .line 638
    :cond_ed
    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v6, v6, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    .line 639
    goto :goto_f7

    .line 632
    :cond_f2
    iget-object v6, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v6, v6, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    .line 633
    nop

    .line 645
    :goto_f7
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 646
    return-void

    .line 649
    :cond_100
    iget-object v7, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v7, v7, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 654
    return-void

    .line 657
    :cond_10f
    invoke-static {v14}, Landroid/os/Process;->getRss(I)[J

    move-result-object v7

    .line 658
    const/4 v8, 0x2

    aget-wide v10, v7, v8

    .line 660
    const/4 v12, 0x0

    aget-wide v25, v7, v12

    const-wide/16 v18, 0x0

    cmp-long v12, v25, v18

    if-nez v12, :cond_134

    const/4 v12, 0x1

    aget-wide v25, v7, v12

    cmp-long v12, v25, v18

    if-nez v12, :cond_134

    aget-wide v25, v7, v8

    cmp-long v8, v25, v18

    if-nez v8, :cond_134

    const/4 v8, 0x3

    aget-wide v25, v7, v8

    cmp-long v8, v25, v18

    if-nez v8, :cond_134

    .line 666
    return-void

    .line 669
    :cond_134
    const-string v8, "all"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    const-string v8, "anon"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_197

    .line 670
    :cond_144
    iget-object v8, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-wide/from16 v25, v10

    iget-wide v9, v8, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v8, v9, v18

    if-lez v8, :cond_159

    iget-object v8, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v8, v8, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    cmp-long v8, v25, v8

    if-gez v8, :cond_159

    .line 677
    return-void

    .line 680
    :cond_159
    if-eqz v5, :cond_197

    iget-object v8, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v8, v8, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v8, v8, v18

    if-lez v8, :cond_197

    .line 681
    invoke-virtual {v5}, Lcom/android/server/am/AppCompactor$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v5

    .line 682
    const/4 v8, 0x1

    aget-wide v9, v7, v8

    aget-wide v18, v5, v8

    sub-long v9, v9, v18

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const/4 v10, 0x2

    aget-wide v18, v7, v10

    aget-wide v25, v5, v10

    sub-long v18, v18, v25

    .line 683
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v18, v8, v18

    const/4 v8, 0x3

    aget-wide v10, v7, v8

    aget-wide v25, v5, v8

    sub-long v10, v10, v25

    .line 684
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long v18, v18, v10

    .line 685
    iget-object v5, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v10, v5, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    cmp-long v5, v18, v10

    if-gtz v5, :cond_197

    .line 691
    return-void

    .line 698
    :cond_197
    const/4 v5, 0x1

    if-eq v13, v5, :cond_1b6

    const/4 v5, 0x2

    if-eq v13, v5, :cond_1b0

    const/4 v5, 0x3

    if-eq v13, v5, :cond_1aa

    const/4 v5, 0x4

    if-eq v13, v5, :cond_1a4

    goto :goto_1bc

    .line 709
    :cond_1a4
    iget-object v5, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v5}, Lcom/android/server/am/AppCompactor;->access$1608(Lcom/android/server/am/AppCompactor;)I

    .line 710
    goto :goto_1bc

    .line 706
    :cond_1aa
    iget-object v5, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v5}, Lcom/android/server/am/AppCompactor;->access$1508(Lcom/android/server/am/AppCompactor;)I

    .line 707
    goto :goto_1bc

    .line 703
    :cond_1b0
    iget-object v5, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v5}, Lcom/android/server/am/AppCompactor;->access$1408(Lcom/android/server/am/AppCompactor;)I

    .line 704
    goto :goto_1bc

    .line 700
    :cond_1b6
    iget-object v5, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v5}, Lcom/android/server/am/AppCompactor;->access$1308(Lcom/android/server/am/AppCompactor;)I

    .line 701
    nop

    .line 716
    :goto_1bc
    :try_start_1bc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Compact "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const/4 v8, 0x1

    if-ne v13, v8, :cond_1cd

    const-string/jumbo v8, "some"

    goto :goto_1cf

    :cond_1cd
    const-string v8, "full"

    :goto_1cf
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1de} :catch_37f
    .catchall {:try_start_1bc .. :try_end_1de} :catchall_378

    .line 716
    const-wide/16 v10, 0x40

    :try_start_1e0
    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_375
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_378

    .line 719
    :try_start_1e3
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v36

    .line 720
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/reclaim"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 722
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 723
    invoke-static {v14}, Landroid/os/Process;->getRss(I)[J

    move-result-object v5

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 725
    sub-long v29, v11, v23

    .line 726
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v38

    .line 727
    const/16 v8, 0x756f

    const/16 v10, 0x12

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v10, v19

    const/16 v18, 0x1

    aput-object v4, v10, v18

    const/16 v16, 0x2

    aput-object v6, v10, v16

    aget-wide v23, v7, v19

    .line 728
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/4 v9, 0x3

    aput-object v18, v10, v9

    const/16 v18, 0x1

    aget-wide v23, v7, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v17, 0x4

    aput-object v18, v10, v17

    const/16 v17, 0x5

    const/16 v16, 0x2

    aget-wide v18, v7, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x6

    const/4 v9, 0x3

    aget-wide v18, v7, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x7

    const/16 v18, 0x0

    aget-wide v23, v5, v18

    aget-wide v25, v7, v18

    sub-long v23, v23, v25

    .line 729
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x8

    const/16 v18, 0x1

    aget-wide v23, v5, v18

    aget-wide v25, v7, v18

    sub-long v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x9

    const/16 v16, 0x2

    aget-wide v18, v5, v16

    aget-wide v23, v7, v16

    sub-long v18, v18, v23

    .line 730
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xa

    const/4 v9, 0x3

    aget-wide v18, v5, v9

    aget-wide v23, v7, v9

    sub-long v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xb

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xc

    .line 731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xd

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x10

    .line 732
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x11

    sub-long v18, v38, v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    .line 727
    invoke-static {v8, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 737
    iget-object v8, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v8}, Lcom/android/server/am/AppCompactor;->access$1700(Lcom/android/server/am/AppCompactor;)Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v10, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget v10, v10, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_32e

    .line 738
    const/16 v8, 0x73

    const/4 v10, 0x0

    aget-wide v17, v7, v10

    const/4 v10, 0x1

    aget-wide v23, v7, v10

    const/4 v10, 0x2

    aget-wide v25, v7, v10

    const/4 v9, 0x3

    aget-wide v27, v7, v9

    const/4 v7, 0x0

    aget-wide v31, v5, v7

    const/4 v7, 0x1

    aget-wide v33, v5, v7

    const/4 v7, 0x2

    aget-wide v40, v5, v7

    const/4 v7, 0x3

    aget-wide v42, v5, v7

    .line 742
    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v35

    .line 738
    move v9, v8

    move v10, v14

    move-wide/from16 v44, v11

    move-wide/from16 v7, v20

    move-object v11, v4

    move v12, v13

    move v1, v13

    move v4, v14

    move-wide/from16 v13, v17

    move-object/from16 v46, v15

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    move-wide/from16 v21, v31

    move-wide/from16 v23, v33

    move-wide/from16 v25, v40

    move-wide/from16 v27, v42

    move/from16 v31, v3

    move-wide/from16 v32, v7

    move/from16 v34, v2

    invoke-static/range {v9 .. v39}, Landroid/util/StatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)I

    goto :goto_334

    .line 737
    :cond_32e
    move-wide/from16 v44, v11

    move v1, v13

    move v4, v14

    move-object/from16 v46, v15

    .line 746
    :goto_334
    iget-object v2, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v2}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_33b} :catch_37f
    .catchall {:try_start_1e3 .. :try_end_33b} :catchall_378

    :try_start_33b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 747
    move-wide/from16 v7, v44

    move-object/from16 v10, v46

    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 748
    iput v1, v10, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 749
    monitor-exit v2
    :try_end_347
    .catchall {:try_start_33b .. :try_end_347} :catchall_36f

    :try_start_347
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 751
    const-string v1, "all"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35a

    const-string v1, "anon"

    .line 752
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36c

    .line 753
    :cond_35a
    iget-object v0, v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    invoke-direct {v2, v5}, Lcom/android/server/am/AppCompactor$LastCompactionStats;-><init>([J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_36c} :catch_37f
    .catchall {:try_start_347 .. :try_end_36c} :catchall_378

    .line 758
    :cond_36c
    const-wide/16 v1, 0x40

    goto :goto_383

    .line 749
    :catchall_36f
    move-exception v0

    :try_start_370
    monitor-exit v2
    :try_end_371
    .catchall {:try_start_370 .. :try_end_371} :catchall_36f

    :try_start_371
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_371 .. :try_end_375} :catch_37f
    .catchall {:try_start_371 .. :try_end_375} :catchall_378

    .line 755
    :catch_375
    move-exception v0

    move-wide v1, v10

    goto :goto_382

    .line 758
    :catchall_378
    move-exception v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 755
    :catch_37f
    move-exception v0

    const-wide/16 v1, 0x40

    .line 758
    :goto_382
    nop

    :goto_383
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 759
    nop

    .line 760
    nop

    .line 769
    :goto_388
    return-void

    .line 566
    :catchall_389
    move-exception v0

    :try_start_38a
    monitor-exit v9
    :try_end_38b
    .catchall {:try_start_38a .. :try_end_38b} :catchall_389

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
