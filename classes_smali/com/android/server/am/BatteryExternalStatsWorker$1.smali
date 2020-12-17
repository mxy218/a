.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 326
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 336
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v1

    .line 338
    .local v1, "updateFlags":I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    goto :goto_28

    :cond_26
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    :goto_28
    move-object v8, v2

    .line 340
    .local v8, "uidsToRemove":[I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 341
    .local v5, "onBattery":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 342
    .local v6, "onBatteryScreenOff":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 343
    .local v7, "useLatestStates":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 344
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 346
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 347
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 348
    and-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_64

    .line 349
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 351
    :cond_64
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6d

    .line 352
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 354
    :cond_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_d5

    .line 357
    :try_start_6e
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_bc

    .line 362
    :try_start_75
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v4, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_b7

    .line 368
    nop

    .line 369
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_b9

    .line 371
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_8a

    .line 372
    :try_start_81
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 376
    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_91} :catch_bc

    .line 377
    :try_start_91
    array-length v2, v8

    move v4, v9

    :goto_93
    if-ge v4, v2, :cond_a9

    aget v10, v8, v4

    .line 378
    .local v10, "uid":I
    const/16 v11, 0x2b

    const/4 v12, -0x1

    invoke-static {v11, v12, v10, v9}, Landroid/util/StatsLog;->write(IIII)I

    .line 380
    iget-object v11, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v11}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V

    .line 377
    .end local v10  # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 382
    :cond_a9
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 383
    monitor-exit v0

    .line 386
    goto :goto_c4

    .line 383
    :catchall_b4
    move-exception v2

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_91 .. :try_end_b6} :catchall_b4

    .end local v1  # "updateFlags":I
    .end local v3  # "reason":Ljava/lang/String;
    .end local v5  # "onBattery":Z
    .end local v6  # "onBatteryScreenOff":Z
    .end local v7  # "useLatestStates":Z
    .end local v8  # "uidsToRemove":[I
    .end local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_b6
    throw v2
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b7} :catch_bc

    .line 365
    .restart local v1  # "updateFlags":I
    .restart local v3  # "reason":Ljava/lang/String;
    .restart local v5  # "onBattery":Z
    .restart local v6  # "onBatteryScreenOff":Z
    .restart local v7  # "useLatestStates":Z
    .restart local v8  # "uidsToRemove":[I
    .restart local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_b7
    move-exception v2

    .end local v1  # "updateFlags":I
    .end local v3  # "reason":Ljava/lang/String;
    .end local v5  # "onBattery":Z
    .end local v6  # "onBatteryScreenOff":Z
    .end local v7  # "useLatestStates":Z
    .end local v8  # "uidsToRemove":[I
    .end local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_b8
    throw v2

    .line 369
    .restart local v1  # "updateFlags":I
    .restart local v3  # "reason":Ljava/lang/String;
    .restart local v5  # "onBattery":Z
    .restart local v6  # "onBatteryScreenOff":Z
    .restart local v7  # "useLatestStates":Z
    .restart local v8  # "uidsToRemove":[I
    .restart local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_b9
    move-exception v2

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b9

    .end local v1  # "updateFlags":I
    .end local v3  # "reason":Ljava/lang/String;
    .end local v5  # "onBattery":Z
    .end local v6  # "onBatteryScreenOff":Z
    .end local v7  # "useLatestStates":Z
    .end local v8  # "uidsToRemove":[I
    .end local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_bb
    throw v2
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bc} :catch_bc

    .line 384
    .restart local v1  # "updateFlags":I
    .restart local v3  # "reason":Ljava/lang/String;
    .restart local v5  # "onBattery":Z
    .restart local v6  # "onBatteryScreenOff":Z
    .restart local v7  # "useLatestStates":Z
    .restart local v8  # "uidsToRemove":[I
    .restart local p0  # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catch_bc
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v4, "Error updating external stats: "

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c4
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 389
    :try_start_c7
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 390
    monitor-exit v2

    .line 391
    return-void

    .line 390
    :catchall_d2
    move-exception v0

    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_c7 .. :try_end_d4} :catchall_d2

    throw v0

    .line 354
    .end local v1  # "updateFlags":I
    .end local v3  # "reason":Ljava/lang/String;
    .end local v5  # "onBattery":Z
    .end local v6  # "onBatteryScreenOff":Z
    .end local v7  # "useLatestStates":Z
    .end local v8  # "uidsToRemove":[I
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1
.end method
