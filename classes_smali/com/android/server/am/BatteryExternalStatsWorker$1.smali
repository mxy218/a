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

    .line 326
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 336
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v4

    .line 338
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    goto :goto_28

    :cond_26
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 340
    :goto_28
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 341
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 342
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 343
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 344
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 346
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 347
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 348
    and-int/lit8 v2, v4, 0x1f

    if-eqz v2, :cond_63

    .line 349
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 351
    :cond_63
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_6c

    .line 352
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 354
    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_d1

    .line 357
    :try_start_6d
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_b8

    .line 362
    :try_start_74
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_b3

    .line 368
    nop

    .line 369
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_b5

    .line 371
    if-eqz v9, :cond_86

    .line 372
    :try_start_7d
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 376
    :cond_86
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8d} :catch_b8

    .line 377
    :try_start_8d
    array-length v2, v1

    move v3, v8

    :goto_8f
    if-ge v3, v2, :cond_a5

    aget v4, v1, v3

    .line 378
    const/16 v5, 0x2b

    const/4 v6, -0x1

    invoke-static {v5, v6, v4, v8}, Landroid/util/StatsLog;->write(IIII)I

    .line 380
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 382
    :cond_a5
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 383
    monitor-exit v0

    .line 386
    goto :goto_c0

    .line 383
    :catchall_b0
    move-exception v1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_8d .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v1
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b3} :catch_b8

    .line 365
    :catchall_b3
    move-exception v1

    :try_start_b4
    throw v1

    .line 369
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v1
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b8} :catch_b8

    .line 384
    :catch_b8
    move-exception v0

    .line 385
    const-string v1, "BatteryExternalStatsWorker"

    const-string v2, "Error updating external stats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    :goto_c0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v1

    .line 389
    :try_start_c3
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_ce
    move-exception v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_ce

    throw v0

    .line 354
    :catchall_d1
    move-exception v1

    :try_start_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v1
.end method
