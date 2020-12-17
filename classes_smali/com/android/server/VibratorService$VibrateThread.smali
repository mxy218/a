.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .registers 6
    .param p2, "waveform"  # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"  # I
    .param p4, "usageHint"  # I

    .line 1272
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1273
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1274
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1275
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1276
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1277
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1278
    return-void
.end method

.method private delayLocked(J)J
    .registers 13
    .param p1, "duration"  # J

    .line 1281
    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1283
    move-wide v2, p1

    .line 1284
    .local v2, "durationRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_34

    .line 1285
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2f

    add-long/2addr v6, p1

    .line 1288
    .local v6, "bedtime":J
    :cond_14
    :try_start_14
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_2f

    .line 1290
    :goto_17
    goto :goto_1a

    :catch_18
    move-exception v8

    goto :goto_17

    .line 1291
    :goto_1a
    :try_start_1a
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_1f

    .line 1292
    goto :goto_29

    .line 1294
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2f

    sub-long v2, v6, v8

    .line 1295
    cmp-long v8, v2, v4

    if-gtz v8, :cond_14

    .line 1296
    :goto_29
    sub-long v4, p1, v2

    .line 1300
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1296
    return-wide v4

    .line 1300
    .end local v2  # "durationRemaining":J
    .end local v6  # "bedtime":J
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 1298
    .restart local v2  # "durationRemaining":J
    :cond_34
    nop

    .line 1300
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1298
    return-wide v4
.end method

.method private getTotalOnDuration([J[III)J
    .registers 11
    .param p1, "timings"  # [J
    .param p2, "amplitudes"  # [I
    .param p3, "startIndex"  # I
    .param p4, "repeatIndex"  # I

    .line 1386
    move v0, p3

    .line 1387
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 1388
    .local v1, "timing":J
    :cond_3
    aget v3, p2, v0

    if-eqz v3, :cond_1c

    .line 1389
    add-int/lit8 v3, v0, 0x1

    .end local v0  # "i":I
    .local v3, "i":I
    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    .line 1390
    array-length v0, p1

    if-lt v3, v0, :cond_16

    .line 1391
    if-ltz p4, :cond_14

    .line 1392
    move v0, p4

    .line 1394
    .end local v3  # "i":I
    .restart local v0  # "i":I
    const/4 p4, -0x1

    goto :goto_17

    .line 1391
    .end local v0  # "i":I
    .restart local v3  # "i":I
    :cond_14
    move v0, v3

    goto :goto_1c

    .line 1390
    :cond_16
    move v0, v3

    .line 1399
    .end local v3  # "i":I
    .restart local v0  # "i":I
    :goto_17
    if-ne v0, p3, :cond_3

    .line 1400
    const-wide/16 v3, 0x3e8

    return-wide v3

    .line 1403
    :cond_1c
    :goto_1c
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1374
    monitor-enter p0

    .line 1375
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1376
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1377
    monitor-exit p0

    .line 1378
    return-void

    .line 1377
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playWaveform()Z
    .registers 21

    .line 1323
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1325
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_7f

    .line 1326
    :try_start_c
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1327
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1328
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 1329
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1331
    .local v6, "repeat":I
    const/4 v7, 0x0

    .line 1332
    .local v7, "index":I
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 1333
    .local v10, "onDuration":J
    :goto_23
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_70

    .line 1334
    if-ge v7, v5, :cond_69

    .line 1335
    aget v12, v4, v7

    .line 1336
    .local v12, "amplitude":I
    add-int/lit8 v19, v7, 0x1

    .end local v7  # "index":I
    .local v19, "index":I
    aget-wide v13, v0, v7

    .line 1337
    .local v13, "duration":J
    cmp-long v7, v13, v8

    if-gtz v7, :cond_36

    .line 1338
    move/from16 v7, v19

    goto :goto_23

    .line 1340
    :cond_36
    if-eqz v12, :cond_5c

    .line 1341
    cmp-long v7, v10, v8

    if-gtz v7, :cond_55

    .line 1348
    add-int/lit8 v7, v19, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v15

    move-wide v8, v13

    .end local v13  # "duration":J
    .local v8, "duration":J
    move-wide v14, v15

    .line 1350
    .end local v10  # "onDuration":J
    .local v14, "onDuration":J
    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-static/range {v13 .. v18}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;JIII)V

    move-wide v10, v14

    goto :goto_5d

    .line 1352
    .end local v8  # "duration":J
    .end local v14  # "onDuration":J
    .restart local v10  # "onDuration":J
    .restart local v13  # "duration":J
    :cond_55
    move-wide v8, v13

    .end local v13  # "duration":J
    .restart local v8  # "duration":J
    iget-object v7, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7, v12}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;I)V

    goto :goto_5d

    .line 1340
    .end local v8  # "duration":J
    .restart local v13  # "duration":J
    :cond_5c
    move-wide v8, v13

    .line 1356
    .end local v13  # "duration":J
    .restart local v8  # "duration":J
    :goto_5d
    invoke-direct {v1, v8, v9}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v13

    .line 1357
    .local v13, "waitTime":J
    if-eqz v12, :cond_64

    .line 1358
    sub-long/2addr v10, v13

    .line 1360
    .end local v8  # "duration":J
    .end local v12  # "amplitude":I
    .end local v13  # "waitTime":J
    :cond_64
    move/from16 v7, v19

    const-wide/16 v8, 0x0

    goto :goto_23

    .end local v19  # "index":I
    .restart local v7  # "index":I
    :cond_69
    if-gez v6, :cond_6c

    .line 1361
    goto :goto_70

    .line 1363
    :cond_6c
    move v7, v6

    const-wide/16 v8, 0x0

    goto :goto_23

    .line 1366
    :cond_70
    :goto_70
    iget-boolean v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v8, :cond_76

    const/4 v8, 0x1

    goto :goto_77

    :cond_76
    const/4 v8, 0x0

    :goto_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_c .. :try_end_78} :catchall_7c

    .line 1369
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1366
    return v8

    .line 1367
    .end local v0  # "timings":[J
    .end local v4  # "amplitudes":[I
    .end local v5  # "len":I
    .end local v6  # "repeat":I
    .end local v7  # "index":I
    .end local v10  # "onDuration":J
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    .end local p0  # "this":Lcom/android/server/VibratorService$VibrateThread;
    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 1369
    .restart local p0  # "this":Lcom/android/server/VibratorService$VibrateThread;
    :catchall_7f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .registers 3

    .line 1305
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1308
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1309
    .local v0, "finished":Z
    if-eqz v0, :cond_18

    .line 1310
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 1313
    .end local v0  # "finished":Z
    :cond_18
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1314
    nop

    .line 1315
    return-void

    .line 1313
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
